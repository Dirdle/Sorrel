--miners 

--forester (it's like a tree miner)
local forester = {
  type = "assembling-machine",
  name = "forester",
  flags = { "placeable-neutral", "placeable-player", "player-creation" },
  minable = { hardness = 0.2, mining_time = 0.5, result = "forester" },
  max_health = 250,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  --Can you have negative resistances (vulnerabilities)? Guess we'll find out.
  resistances = { { type = "fire", percent = -25 } },
  crafting_categories = { "forestry" },
  crafting_speed = 1,
  ingredient_count = 1,
  energy_source = {
    --works for free, removes pollution with negative emissions_per_minute
    type = "void",
    emissions_per_minute = -5
  },
  energy_usage = "100kW",
  --productivity not on raw prod, effic would actually be bad
  allowed_effects = { "speed" },
  module_specification = {
    module_slots = 2
  },
  fluid_boxes = {
    {
      production_type = "input",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = { { type = "input", position = { -1, -5 } } }
    },
    {
      production_type = "output",
      pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = 1,
      pipe_connections = { { type = "output", position = { 1, -5 } } }
    },
    off_when_no_fluid_recipe = true
  },
  collision_box = { { -4.2, -4.2 }, { 4.2, 4.2 } },
  selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
  icons = {
    {
      icon = "__sorrel__/graphics/BioIndustries/Icons/Bio_Farm_Icon.png",
      icon_size = 64,
    }
  },
  animation = {
    filename = "__sorrel__/graphics/BioIndustries/Bio_Farm_Idle.png",
    priority = "high",
    width = 348,
    height = 288,
    shift = { 0.96, 0 },
    frame_count = 1,
  },
  working_visualisations = {
    animation = {
      filename = "__sorrel__/graphics/BioIndustries/Bio_Farm_Working.png",
      priority = "high",
      width = 348,
      height = 288,
      shift = { 0.96, 0 },
      frame_count = 1,
    },
  },
  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
  close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  vehicle_impact_sound = sounds.generic_impact
}

data:extend{forester}