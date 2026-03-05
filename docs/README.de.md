<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**Adaptives Web-Scraping-Skill für OpenClaw-Agenten — umgeht Anti-Bot-Systeme, übersteht Website-Redesigns.**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Français](README.fr.md) | [Русский](README.ru.md) | [日本語](README.ja.md) | [Italiano](README.it.md) | [Español](README.es.md)

</div>

---

## Was ist das?

Ein [OpenClaw](https://github.com/openclaw/openclaw)-Agenten-Skill, der Ihrem KI-Assistenten leistungsstarke Web-Scraping-Fähigkeiten verleiht, basierend auf dem [Scrapling](https://github.com/D4Vinci/Scrapling)-Framework.

**Ihr Agent kann jetzt:**
- 🛡️ **Cloudflare umgehen**, Turnstile und andere Anti-Bot-Systeme
- 🔄 **Website-Redesigns überstehen** dank adaptiver Element-Verfolgung
- ⚡ **Im großen Maßstab crawlen** mit Parallelität, Pause/Fortsetzen und Proxy-Rotation
- 🎯 **Präzise extrahieren** mit CSS, XPath, Textsuche
- 🌐 **JavaScript rendern** für SPAs mit Headless-Browser

## Installation

```bash
clawhub install openclaw-ultra-scraping
```

## Verwendung

Bitten Sie einfach Ihren OpenClaw-Agenten:

> „Scrape die Top-10-Produkte von example.com"
> „Hole die Daten von dieser Cloudflare-geschützten Seite"

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://geschuetzte-seite.com" --stealth --solve-cloudflare
```

## Credits

Basiert auf [Scrapling](https://github.com/D4Vinci/Scrapling) von [Karim Shoair](https://github.com/D4Vinci). Lizenz: MIT.

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — Deine KI, dein Server, deine Regeln.

</div>
