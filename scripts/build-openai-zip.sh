#!/bin/sh
# Packs the ChatGPT upload for platform.openai.com/plugins. OpenAI reads
# plugin.json, mcp.json, skills/ and assets/ at the ZIP root; the Claude files
# (.claude-plugin/, .mcp.json) stay out. The logo is copied from the Claude
# listing icon at build time, because the Claude directory holds any other
# repo image for manual review.
set -e
cd "$(dirname "$0")/.."
mkdir -p dist assets
cp .claude-plugin/icon.png assets/logo.png
rm -f dist/safestreets-openai.zip
zip -qr dist/safestreets-openai.zip plugin.json mcp.json skills assets
unzip -l dist/safestreets-openai.zip
