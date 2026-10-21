---
name: where-to-live-on-foot
description: Help someone choose where to live in the US based on walkability, transit and home prices, using the SafeStreets connector. Use for relocation questions, "which neighborhood should I move to", "where can I live without a car", or choosing between a shortlist of addresses.
---

# Where to live on foot

Use the SafeStreets tools to narrow the search, then compare the finalists.

## When the person has not picked an area yet

1. Ask for, or infer, the region (state, metro or counties), a home price ceiling, and what matters most: errands on foot, transit, or living without a car.
2. Call `search_neighborhoods` with those filters. Use `sort_by` to match the priority: `walk`, `transit` or `zero_car`. Use `budget_max` for the price ceiling.
3. Note that `walkabilityIndex` in these rows is the EPA National Walkability Index on a 1 to 20 scale. Do not present it as the SafeStreets 0 to 10 score.
4. Show five to eight neighborhoods with median home value, walkability index and the share of commuters who walk or take transit.

## When the person names a city

Call `find_walkable_neighborhoods` with the city. An empty list means SafeStreets has not broken that city down yet. Fall back to `search_neighborhoods` with the state.

## Comparing a shortlist

1. Call `compare_locations` with every address or neighborhood on the shortlist, each with a `label`.
2. Lead with the component gaps. Two places can share a score for opposite reasons: one with errands close by and dangerous streets, the other with safe streets and nothing within reach.
3. Recommend one place and give the reason in a sentence.

## Limits to state when they matter

United States only. Home values and commute shares come from the US Census American Community Survey and lag the market by a year or more.
