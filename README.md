# SafeStreets plugin

Walkability and pedestrian safety for any US address, for Claude and ChatGPT. Made by [Streets & Commons](https://safestreets.streetsandcommons.com).

The plugin connects your assistant to the SafeStreets MCP server at `https://safestreets.streetsandcommons.com/mcp` and adds three skills that tell the assistant how to use it well. It is free and needs no sign-in.

## Tools

| Tool | What it answers |
|---|---|
| `get_walkability_score` | How walkable and how safe for walking one address is, 0 to 10, with four components and the metrics behind them |
| `compare_locations` | Which of several places is better on foot, and on which component they differ |
| `score_many` | Scores for a list of addresses |
| `get_city_walkability` | A whole city's score |
| `find_walkable_neighborhoods` | The most walkable neighborhoods in a city |
| `search_neighborhoods` | Neighborhoods across the US filtered by region, home price, walkability and transit |
| `get_dangerous_corridors` | Roads where pedestrians were killed, from NHTSA FARS, with deaths per year |
| `search_insights` | SafeStreets research articles with figures you can cite |

Every tool only reads data.

## Skills

- **walkability-check**: answers "is this address walkable?" with a verdict and the component that holds it back.
- **where-to-live-on-foot**: narrows a move by region, budget and transit, then compares a shortlist.
- **street-safety-evidence**: builds a sourced case about a dangerous street for a council letter, story or grant.

## Install

**Claude Code**

```
/plugin marketplace add Poseidon-t/safestreets-plugin
/plugin install safestreets@safestreets
```

**Claude.ai or Claude Desktop**: Settings, Connectors, Add custom connector, then paste `https://safestreets.streetsandcommons.com/mcp`.

**ChatGPT**: Settings, Apps and Connectors, Create, then paste the same URL with no authentication.

**Cursor or any MCP client**

```json
{
  "mcpServers": {
    "safestreets": { "url": "https://safestreets.streetsandcommons.com/mcp" }
  }
}
```

## Limits

Keyless calls share a daily limit on full address scores. A [free API key](https://safestreets.streetsandcommons.com/walkability-api) gives you your own 10,000 calls a month: send it as the `x-api-key` header. Coverage is the United States only.

## Data and policies

Scores come from OpenStreetMap, NHTSA crash records, the US Census, EPA and satellite imagery. See the [methodology](https://safestreets.streetsandcommons.com/methodology), [privacy policy](https://safestreets.streetsandcommons.com/privacy) and [terms](https://safestreets.streetsandcommons.com/terms).

Support: hello@streetsandcommons.com
