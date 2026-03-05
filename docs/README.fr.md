<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**Compétence de web scraping adaptatif pour les agents OpenClaw — contourne l'anti-bot, survit aux refontes de sites.**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Русский](README.ru.md) | [日本語](README.ja.md) | [Italiano](README.it.md) | [Español](README.es.md)

</div>

---

## Qu'est-ce que c'est ?

Une compétence [OpenClaw](https://github.com/openclaw/openclaw) qui donne à votre assistant IA de puissantes capacités de web scraping, propulsée par le framework [Scrapling](https://github.com/D4Vinci/Scrapling).

**Votre agent peut maintenant :**
- 🛡️ **Contourner Cloudflare**, Turnstile et autres systèmes anti-bot
- 🔄 **Survivre aux refontes** grâce au suivi adaptatif des éléments
- ⚡ **Crawler à grande échelle** avec concurrence, pause/reprise et rotation de proxy
- 🎯 **Extraire précisément** avec CSS, XPath, recherche textuelle
- 🌐 **Rendre le JavaScript** des SPA avec navigateur headless

## Installation

```bash
clawhub install openclaw-ultra-scraping
```

## Utilisation

Demandez simplement à votre agent OpenClaw :

> « Extrais les 10 premiers produits de example.com »
> « Récupère les données de cette page protégée par Cloudflare »

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://site-protege.com" --stealth --solve-cloudflare
```

## Crédits

Basé sur [Scrapling](https://github.com/D4Vinci/Scrapling) par [Karim Shoair](https://github.com/D4Vinci). Licence MIT.

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — Votre IA, votre serveur, vos règles.

</div>
