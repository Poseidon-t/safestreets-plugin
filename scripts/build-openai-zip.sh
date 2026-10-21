#!/bin/sh
# Packs the ChatGPT upload for platform.openai.com/plugins. OpenAI reads
# plugin.json, mcp.json, skills/ and assets/ at the ZIP root; the Claude files
# (.claude-plugin/, .mcp.json) stay out.
set -e
cd "$(dirname "$0")/.."
mkdir -p dist
rm -f dist/safestreets-openai.zip
zip -qr dist/safestreets-openai.zip plugin.json mcp.json skills assets
unzip -l dist/safestreets-openai.zip
