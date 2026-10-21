---
name: walkability-check
description: Check how walkable and how safe for walking a US address is, using the SafeStreets connector. Use when someone asks whether a place is walkable, whether they could live there without a car, whether kids could walk to school from it, or how an address scores on pedestrian safety.
---

# Walkability check for one address

Use the SafeStreets tools for this. Do not estimate a score from memory.

## Steps

1. Call `get_walkability_score` with the `address` exactly as the person gave it. Do not convert the address to coordinates yourself: a guessed point gets a confident score for the wrong place.
2. Read `resolvedFrom.resolvedAddress` in the reply. If it names a different street or town from the one asked about, say so and ask for a fuller address before you quote any number.
3. Give the score as SafeStreets shows it: `displayScore` out of 10, with the `tier`.
4. Explain the score through its four components, starting with the weakest:
   - `dailyReach`: errands within a 15-minute walk
   - `streetSafety`: street design and pedestrian crash risk
   - `transitReach`: usable transit nearby
   - `walkingComfort`: shade, heat, air quality, slope
   Quote one or two metrics from the weakest component so the person can see what drags the score down.
5. If `confidence` is below 60, say that some data was missing for this point.
6. For safety questions, add `get_dangerous_corridors` with the same coordinates and a 2 km radius. Name any road on the list and its recorded deaths.

## Answer in plain words

Answer the question the person asked first. "Yes, you could live here without a car: groceries, a clinic and a school are all within a 10-minute walk" helps more than a score with no verdict.

## Limits to state when they matter

- United States only. For any other country, say SafeStreets does not cover it.
- Crash figures are county-level, so nearby points can share them.
- SafeStreets has no crime data, no driving directions and no property listings.

Link the full report at https://safestreets.streetsandcommons.com for anyone who wants the map.
