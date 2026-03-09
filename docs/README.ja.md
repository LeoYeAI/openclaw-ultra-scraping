<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**OpenClawエージェント向けの適応型Webスクレイピングスキル — アンチボットを突破し、サイトリニューアルにも対応。**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [中文](README.zh-CN.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Русский](README.ru.md) | [Italiano](README.it.md) | [Español](README.es.md)

</div>

---

## これは何ですか？

[OpenClaw](https://github.com/openclaw/openclaw)エージェントスキルで、AIアシスタントに強力なWebスクレイピング機能を提供します — アンチボット突破、適応型要素追跡、並行クロールを内蔵。

**エージェントが可能になること：**
- 🛡️ **Cloudflare突破** — Turnstileなどのアンチボットシステムを回避
- 🔄 **サイトリニューアル対応** — 適応型要素追跡で構造変更にも対応
- ⚡ **大規模クロール** — 並行処理、一時停止/再開、プロキシローテーション
- 🎯 **精密抽出** — CSS、XPath、テキスト検索
- 🌐 **JavaScript対応** — ヘッドレスブラウザでSPAもレンダリング

## インストール

```bash
clawhub install openclaw-ultra-scraping
```

## 使用方法

```bash
PYTHON=/opt/scrapling-venv/bin/python3
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"
$PYTHON scripts/scrape.py fetch "https://protected.com" --stealth --solve-cloudflare
```

## ライセンス

MIT

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — あなたのAI、あなたのサーバー、あなたのルール。

</div>
