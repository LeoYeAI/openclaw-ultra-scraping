<div align="center">

# 🕷️ OpenClaw Ultra Scraping

**OpenClaw 智能体的自适应网页爬虫技能 — 突破反爬、适应网站改版。**

[![Powered by MyClaw.ai](https://img.shields.io/badge/Powered%20by-MyClaw.ai-blue?style=for-the-badge)](https://myclaw.ai)
[![ClawHub](https://img.shields.io/badge/ClawHub-openclaw--ultra--scraping-green?style=for-the-badge)](https://clawhub.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](../LICENSE)

[English](../README.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [Русский](README.ru.md) | [日本語](README.ja.md) | [Italiano](README.it.md) | [Español](README.es.md)

</div>

---

## 这是什么？

一个 [OpenClaw](https://github.com/openclaw/openclaw) 智能体技能，基于 [Scrapling](https://github.com/D4Vinci/Scrapling) 框架，赋予你的 AI 助手强大的网页爬虫能力。

**你的智能体现在可以：**
- 🛡️ **突破 Cloudflare**、Turnstile 等反爬系统
- 🔄 **适应网站改版** — 自适应元素追踪，网站结构变了也能找到数据
- ⚡ **大规模并发爬取** — 支持暂停/恢复、代理轮换
- 🎯 **精准提取** — CSS、XPath、文本搜索、BeautifulSoup 风格选择器
- 🌐 **渲染 JavaScript** — 无头浏览器支持 SPA 页面

## 安装

### 通过 ClawHub（推荐）

```bash
clawhub install openclaw-ultra-scraping
```

### 手动安装

```bash
git clone https://github.com/LeoYeAI/openclaw-ultra-scraping.git ~/.openclaw/workspace/skills/openclaw-ultra-scraping
bash ~/.openclaw/workspace/skills/openclaw-ultra-scraping/scripts/setup.sh
```

## 使用方法

安装后，直接用自然语言让你的 OpenClaw 智能体爬取数据：

> "帮我爬取 example.com 上的前10个产品"
> "提取这个页面的所有链接"
> "爬取这个网站的所有文章标题"
> "抓取这个 Cloudflare 保护的页面"

### CLI 命令行

```bash
PYTHON=/opt/scrapling-venv/bin/python3

# 简单抓取
$PYTHON scripts/scrape.py fetch "https://example.com" --css ".content"

# 突破 Cloudflare
$PYTHON scripts/scrape.py fetch "https://protected.com" --stealth --solve-cloudflare

# JavaScript 渲染
$PYTHON scripts/scrape.py fetch "https://spa-app.com" --dynamic --css ".data"

# 多页爬取
$PYTHON scripts/scrape.py crawl "https://example.com" --depth 2 --concurrency 10 -o results.json
```

## 抓取器选择

| 场景 | 抓取器 | CLI 参数 |
|------|--------|----------|
| 普通网站 | `Fetcher` | *（默认）* |
| JS 渲染的 SPA | `DynamicFetcher` | `--dynamic` |
| 反爬保护 | `StealthyFetcher` | `--stealth` |
| Cloudflare Turnstile | `StealthyFetcher` | `--stealth --solve-cloudflare` |

## 需求

- OpenClaw 实例（在 [myclaw.ai](https://myclaw.ai) 获取）
- Python 3.10+
- ~2GB 磁盘空间（浏览器）

## 致谢

基于 [Karim Shoair](https://github.com/D4Vinci) 开发的 [Scrapling](https://github.com/D4Vinci/Scrapling) 框架。

## 许可证

MIT

---

<div align="center">

**[MyClaw.ai](https://myclaw.ai)** — 你的 AI，你的服务器，你做主。

</div>
