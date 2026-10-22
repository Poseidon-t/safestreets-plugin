#!/bin/sh
# Packs the ChatGPT upload for platform.openai.com/plugins. OpenAI reads
# plugin.json, mcp.json, skills/ and assets/ at the ZIP root; the Claude files
# (.claude-plugin/, .mcp.json) stay out. The logo is fetched at build time and
# kept out of git, because the Claude directory holds any repo image for
# manual review.
set -e
cd "$(dirname "$0")/.."
mkdir -p dist assets
curl -sf -o assets/logo.png https://safestreets.streetsandcommons.com/logo.png
rm -f dist/safestreets-openai.zip
zip -qr dist/safestreets-openai.zip plugin.json mcp.json skills assets
unzip -l dist/safestreets-openai.zip
