<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**Skill di web scraping adattivo per agenti OpenClaw — aggira i sistemi anti-bot, sopravvive ai redesign dei siti.**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: BSD-3](https://img.shields.io/badge/License-BSD--3-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Русский](README.ru.md) | [日本語](README.ja.md) | [Español](README.es.md)

</div>

---

## Cos'è?

Uno skill [OpenClaw](https://github.com/openclaw/openclaw) che fornisce al tuo assistente IA potenti capacità di web scraping, basato sul framework [Scrapling](https://github.com/D4Vinci/Scrapling).

**Il tuo agente ora può:**
- 🛡️ **Aggirare Cloudflare**, Turnstile e altri sistemi anti-bot
- 🔄 **Sopravvivere ai redesign** grazie al tracciamento adattivo degli elementi
- ⚡ **Crawling su larga scala** con concorrenza, pausa/ripresa e rotazione proxy
- 🎯 **Estrazione precisa** con CSS, XPath, ricerca testuale
- 🌐 **Rendering JavaScript** per SPA con browser headless

## Installazione

```bash
clawhub install openclaw-ultra-scraping
```

## Utilizzo

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://protetto.com" --stealth --solve-cloudflare
```

## Crediti

Basato su [Scrapling](https://github.com/D4Vinci/Scrapling) di [Karim Shoair](https://github.com/D4Vinci). Licenza: BSD-3-Clause.

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — La tua IA, il tuo server, le tue regole.

</div>
