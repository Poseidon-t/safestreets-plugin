---
name: street-safety-evidence
description: Gather sourced evidence about a dangerous street or a city's pedestrian deaths for a letter to a council, a news story, a Vision Zero plan or a grant application, using the SafeStreets connector. Use when someone wants to prove a road is dangerous, cite pedestrian fatality figures, or argue for a street redesign.
---

# Street safety evidence

Build the case from recorded data, and cite every figure.

## Steps

1. Call `get_dangerous_corridors` with the city, or with coordinates and a radius for one street. Each corridor carries recorded pedestrian deaths per year from NHTSA's Fatality Analysis Reporting System (FARS).
2. If the person names a specific address on the street, call `get_walkability_score` for it and quote the `streetSafety` component and its metrics: crossing distance, speed exposure, sidewalk coverage, lighting.
3. Call `search_insights` with the design problem in plain words, for example "arterial roads", "right on red" or "kids walking to school". Use the returned article's figures and link it.
4. Write the evidence as short, sourced statements. Give each number its source and its years.

## Keep the claims exact

- These are deaths recorded in crash reports. A road missing from the list had no recorded pedestrian death in the period, which does not make it safe. Say so if the person's street is not on the list.
- Do not round or combine figures to make them sound larger.
- Name FARS as the source of fatality counts, and give the years from the tool's reply.

## Letters to a council

Open with the street, the deaths and the years. Then give one design fix that the evidence supports, such as a signalised crossing, a lower speed limit or a narrower lane, and ask for a specific action with a date.
