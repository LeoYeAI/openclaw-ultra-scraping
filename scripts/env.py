#!/usr/bin/env python3
"""Environment helpers for OpenClaw Ultra Scraping.

Detect a usable Scrapling virtualenv across macOS/Linux layouts.
"""

from __future__ import annotations

import os
import sys
from pathlib import Path


def candidate_venvs() -> list[Path]:
    env = os.environ.get("SCRAPLING_VENV")
    home = Path.home()
    candidates = []
    if env:
        candidates.append(Path(env).expanduser())
    candidates.extend([
        home / "scrapling-venv",
        Path("/opt/scrapling-venv"),
    ])
    return candidates


def detect_venv() -> Path | None:
    for base in candidate_venvs():
        if (base / "bin" / "python3").exists() and (base / "bin" / "scrapling").exists():
            return base
    return None


def add_site_packages(venv: Path | None) -> Path | None:
    if venv is None:
        return None
    pyver = f"python{sys.version_info.major}.{sys.version_info.minor}"
    candidates = [
        venv / "lib" / pyver / "site-packages",
    ]
    for p in candidates:
        if p.exists():
            p_str = str(p)
            if p_str not in sys.path:
                sys.path.insert(0, p_str)
            return p
    return None


def describe_runtime() -> dict:
    venv = detect_venv()
    site = add_site_packages(venv)
    return {
        "venv": str(venv) if venv else None,
        "site_packages": str(site) if site else None,
        "candidates": [str(p) for p in candidate_venvs()],
    }
