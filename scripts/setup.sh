#!/usr/bin/env bash
# OpenClaw Ultra Scraping — cross-platform setup
# Supports macOS (Darwin) and Linux. Installs Scrapling into a local venv.

set -euo pipefail

OS="$(uname -s)"
DEFAULT_VENV_LINUX="/opt/scrapling-venv"
DEFAULT_VENV_MAC="${HOME}/scrapling-venv"
VENV="${SCRAPLING_VENV:-}"

if [ -z "$VENV" ]; then
  if [ "$OS" = "Darwin" ]; then
    VENV="$DEFAULT_VENV_MAC"
  else
    VENV="$DEFAULT_VENV_LINUX"
  fi
fi

SCRAPLING_BIN="$VENV/bin/scrapling"
PYTHON_BIN="$VENV/bin/python3"
PIP_BIN="$VENV/bin/pip"
PIP_INDEX_URL="${PIP_INDEX_URL:-https://pypi.org/simple}"

if [ -x "$SCRAPLING_BIN" ] && [ -x "$PYTHON_BIN" ]; then
  echo "✅ Scrapling already installed at $VENV"
  "$PYTHON_BIN" -c "import scrapling; print(f'  Version: {scrapling.__version__}')" 2>/dev/null || true
  exit 0
fi

install_linux_deps() {
  if command -v apt-get >/dev/null 2>&1; then
    echo "🔧 Installing Linux system dependencies via apt-get..."
    apt-get update -qq
    apt-get install -y -qq python3-venv python3-full \
      libatk1.0-0 libatk-bridge2.0-0 libcups2 \
      libxcomposite1 libxdamage1 libxfixes3 libxrandr2 \
      libgbm1 libcairo2 libpango-1.0-0 libasound2 2>/dev/null || true
  else
    echo "ℹ️ apt-get not found; skipping Linux system dependency installation"
  fi
}

install_macos_deps() {
  echo "🍎 macOS detected"
  if ! command -v python3 >/dev/null 2>&1; then
    echo "❌ python3 is required. Install it first (e.g. via Homebrew)." >&2
    exit 1
  fi
  if ! command -v brew >/dev/null 2>&1; then
    echo "ℹ️ Homebrew not found; continuing with Python-only setup"
  fi
}

case "$OS" in
  Darwin)
    install_macos_deps
    ;;
  Linux)
    install_linux_deps
    ;;
  *)
    echo "⚠️ Unsupported OS: $OS. Attempting generic Python setup only."
    ;;
 esac

echo "🐍 Creating virtualenv at $VENV..."
mkdir -p "$(dirname "$VENV")"
python3 -m venv "$VENV"

echo "📦 Installing Scrapling (all extras)..."
echo "   Using pip index: $PIP_INDEX_URL"
# Avoid hard-failing on mirrored pip index issues during self-upgrade.
PIP_INDEX_URL="$PIP_INDEX_URL" "$PIP_BIN" install --upgrade setuptools wheel >/dev/null || true
PIP_INDEX_URL="$PIP_INDEX_URL" "$PIP_BIN" install --quiet "scrapling[all]"

echo "🌐 Installing browsers..."
"$SCRAPLING_BIN" install

echo "✅ Setup complete!"
"$PYTHON_BIN" -c "import scrapling; print(f'  Scrapling {scrapling.__version__} ready at ${VENV}')"
