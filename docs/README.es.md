<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**Habilidad de web scraping adaptativo para agentes OpenClaw — evade anti-bots, sobrevive a rediseños de sitios.**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Русский](README.ru.md) | [日本語](README.ja.md) | [Italiano](README.it.md)

</div>

---

## ¿Qué es esto?

Una habilidad [OpenClaw](https://github.com/openclaw/openclaw) que otorga a tu asistente IA poderosas capacidades de web scraping — con evasión anti-bot integrada, rastreo adaptativo de elementos y crawling concurrente.

**Tu agente ahora puede:**
- 🛡️ **Evadir Cloudflare**, Turnstile y otros sistemas anti-bot
- 🔄 **Sobrevivir a rediseños** gracias al rastreo adaptativo de elementos
- ⚡ **Crawling a gran escala** con concurrencia, pausa/reanudación y rotación de proxies
- 🎯 **Extracción precisa** con CSS, XPath, búsqueda por texto
- 🌐 **Renderizar JavaScript** de SPAs con navegador headless

## Instalación

```bash
clawhub install openclaw-ultra-scraping
```

## Uso

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://protegido.com" --stealth --solve-cloudflare
```

## Licencia

MIT

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — Tu IA, tu servidor, tus reglas.

</div>
