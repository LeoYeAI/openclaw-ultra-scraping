<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**Адаптивный навык веб-скрейпинга для агентов OpenClaw — обходит защиту от ботов, переживает редизайн сайтов.**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [日本語](README.ja.md) | [Italiano](README.it.md) | [Español](README.es.md)

</div>

---

## Что это?

Навык для [OpenClaw](https://github.com/openclaw/openclaw), который даёт вашему ИИ-ассистенту мощные возможности веб-скрейпинга — с встроенным обходом защиты от ботов, адаптивным отслеживанием элементов и параллельным краулингом.

**Ваш агент теперь может:**
- 🛡️ **Обходить Cloudflare**, Turnstile и другие системы защиты от ботов
- 🔄 **Переживать редизайн сайтов** благодаря адаптивному отслеживанию элементов
- ⚡ **Массовый краулинг** с параллелизмом, паузой/возобновлением и ротацией прокси
- 🎯 **Точная извлечение** с CSS, XPath, текстовым поиском
- 🌐 **Рендеринг JavaScript** SPA через headless-браузер

## Установка

```bash
clawhub install openclaw-ultra-scraping
```

## Использование

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://protected.com" --stealth --solve-cloudflare
```

## Лицензия

MIT

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — Ваш ИИ, ваш сервер, ваши правила.

</div>
