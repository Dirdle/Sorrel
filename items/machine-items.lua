--machine-items

--furnaces
local kiln = table.deepcopy(data.raw["item"]["stone-furnace"])
kiln.name = "kiln"
kiln.icons = {
  {
    icon = kiln.icon,
    tint = { r = 0.9, g = 0.9, b = 0.9, a = 0.3 }
  },
}
kiln.place_result = "kiln"

local brickFurnace = table.deepcopy(data.raw["item"]["stone-furnace"])
brickFurnace.name = "brick-furnace"
brickFurnace.icons = {
  {
    icon = brickFurnace.icon,
    tint = { r = 0.9, g = 0.1, b = 0.0, a = 0.3 }
  },
}
brickFurnace.place_result = "brick-furnace"

data:extend{kiln, brickFurnace}


--miners

local forester = {
  type = "item",
  name = "forester",
  localised_name = { "entity-name.forester" },
  localised_description = { "entity-description.forester" },
  icon = "__sorrel__/graphics/BioIndustries/Icons/Bio_Farm_Icon.png",
  icon_size = 64,
  icons = {
    {
      icon = "__sorrel__/graphics/BioIndustries/Icons/Bio_Farm_Icon.png",
      icon_size = 64,
    }
  },
  subgroup = "production-machine",
  order = "a[items]-b[forester]",
  place_result = "forester",
  stack_size = 10,
}
data:extend { forester }
