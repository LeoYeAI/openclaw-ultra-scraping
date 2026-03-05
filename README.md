<div align="center">

<a href="https://myclaw.ai"><img src="https://img.shields.io/badge/MyClaw.ai-Your_AI,_Your_Server,_Your_Rules-blue?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJ3aGl0ZSI+PHBhdGggZD0iTTEyIDJDNi40OCAyIDIgNi40OCAyIDEyczQuNDggMTAgMTAgMTAgMTAtNC40OCAxMC0xMFMxNy41MiAyIDEyIDJ6Ii8+PC9zdmc+" alt="MyClaw.ai" /></a>

# 🕷️ OpenClaw Ultra Scraping

**Adaptive web scraping skill for OpenClaw agents — bypasses anti-bot, survives site redesigns.**

> Built by [MyClaw.ai](https://myclaw.ai) — the AI personal assistant platform that gives every user a full server with complete code control. OpenClaw Ultra Scraping is one of many open-source skills that extend your AI agent's capabilities.

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)

[中文](docs/README.zh-CN.md) | [Français](docs/README.fr.md) | [Deutsch](docs/README.de.md) | [Русский](docs/README.ru.md) | [日本語](docs/README.ja.md) | [Italiano](docs/README.it.md) | [Español](docs/README.es.md)

</div>

---

## What is this?

An [OpenClaw](https://github.com/openclaw/openclaw) agent skill that gives your AI assistant powerful web scraping superpowers, powered by the [Scrapling](https://github.com/D4Vinci/Scrapling) framework.

**Your agent can now:**
- 🛡️ **Bypass Cloudflare**, Turnstile, and other anti-bot systems out of the box
- 🔄 **Survive website redesigns** with adaptive element tracking
- ⚡ **Crawl at scale** with concurrent spiders, pause/resume, and proxy rotation
- 🎯 **Extract precisely** with CSS, XPath, text search, and BeautifulSoup-style selectors
- 🌐 **Render JavaScript** SPAs with headless browser support

## Install

### Via ClawHub (recommended)

```bash
clawhub install openclaw-ultra-scraping
```

### Manual

```bash
# Clone into your OpenClaw skills directory
git clone https://github.com/LeoYeAI/openclaw-ultra-scraping.git ~/.openclaw/workspace/skills/openclaw-ultra-scraping

# Run setup (installs Scrapling + browsers)
bash ~/.openclaw/workspace/skills/openclaw-ultra-scraping/scripts/setup.sh
```

## Usage

Once installed, just ask your OpenClaw agent to scrape anything:

> "Scrape the top 10 products from example.com"
> "Extract all links from this page"
> "Crawl this site and grab all article titles"
> "Get the data from this Cloudflare-protected page"

### CLI (for agents & scripts)

```bash
PYTHON=/opt/scrapling-venv/bin/python3

# Simple fetch
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"

# Bypass Cloudflare
$PYTHON scripts/scrape.py fetch "https://protected.com" --stealth --solve-cloudflare

# Full browser for SPAs
$PYTHON scripts/scrape.py fetch "https://spa-app.com" --dynamic --css ".data"

# Multi-page crawl
$PYTHON scripts/scrape.py crawl "https://example.com" --depth 2 --concurrency 10 -o results.json

# Extract links
$PYTHON scripts/scrape.py links "https://example.com" --filter "\.pdf$"

# Output formats: json, jsonl, csv, text, markdown, html
$PYTHON scripts/scrape.py fetch "https://example.com" -f markdown -o page.md
```

### Python API (for custom scripts)

```python
#!/opt/scrapling-venv/bin/python3
from scrapling.fetchers import Fetcher, StealthyFetcher, DynamicFetcher

# Fast HTTP scraping
page = Fetcher.get('https://example.com', impersonate='chrome')
titles = page.css('h1::text').getall()

# Anti-bot bypass
page = StealthyFetcher.fetch('https://cloudflare-site.com', headless=True, solve_cloudflare=True)

# JavaScript rendering
page = DynamicFetcher.fetch('https://react-app.com', headless=True, network_idle=True)

# Adaptive tracking (survives redesigns)
products = page.css('.product', auto_save=True)   # First run: save fingerprints
products = page.css('.product', adaptive=True)     # Later: find even if HTML changed
```

## Fetcher Selection

| Scenario | Fetcher | CLI Flag |
|----------|---------|----------|
| Normal sites | `Fetcher` | *(default)* |
| JS-rendered SPAs | `DynamicFetcher` | `--dynamic` |
| Anti-bot protected | `StealthyFetcher` | `--stealth` |
| Cloudflare Turnstile | `StealthyFetcher` | `--stealth --solve-cloudflare` |

## Features

- **3 fetcher tiers**: HTTP → Dynamic Browser → Stealth Browser
- **Adaptive element tracking**: Elements survive site redesigns via fingerprinting
- **Spider framework**: Scrapy-like concurrent crawling with pause/resume
- **Anti-bot bypass**: Cloudflare Turnstile, CAPTCHAs, TLS fingerprinting
- **Proxy rotation**: Built-in `ProxyRotator` with cyclic or custom strategies
- **Session management**: Persistent cookies/state across requests
- **Async support**: All fetchers have async variants
- **Multiple output formats**: JSON, JSONL, CSV, text, Markdown, HTML

## Requirements

- OpenClaw instance (get one at [myclaw.ai](https://myclaw.ai))
- Python 3.10+
- ~2GB disk space (for browsers)

## Credits

Built on top of the excellent [Scrapling](https://github.com/D4Vinci/Scrapling) framework by [Karim Shoair](https://github.com/D4Vinci).

## License

MIT

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — Your AI, Your Server, Your Rules.

</div>
