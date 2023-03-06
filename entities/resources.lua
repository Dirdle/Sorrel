--resources



--alluvial ore (clay, sand, bauxite)
datum:extend(resource(
    {
      name = "alluvial-ore",
      order = "b",
      map_color = {0.6, 0.4, 0.05},
      mining_time = 1,
      walking_sound = sounds.ore,
      mining_visualisation_tint = {r = 0.6, g = 0.6, b = 0.05, a = 1.000},
    },
    {
      base_density = 10,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = 22,
    })
)

