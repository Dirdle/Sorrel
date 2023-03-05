--furnaces

local datum = {}

--kiln: tier 0 furnace, uses basic-smelting category
local kiln = table.deepcopy(data.raw["furnace"]["stone-furnace"])
kiln.name = "kiln"
kiln.icons = {
    {
      icon = kiln.icon,
      tint = {r=0.9,g=0.9,b=0.9,a=0.3}
    },
  }
kiln.minable = {mining_time = 0.2, result = "kiln"}
kiln.crafting_categories = {"basic-smelting"}
datum:extend(kiln)

--clay brick furnace; equiv stone furnace but red
local brickFurnace = table.deepcopy(data.raw["furnace"]["stone-furnace"])
brickFurnace.name = "brick-furnace"
brickFurnace.icons = {
    {
      icon = brickFurnace.icon,
      tint = {r=0.9,g=0.1,b=0.0,a=0.3}
    },
  }
brickFurnace.minable = {mining_time = 0.2, result = "brick-furnace"}
brickFurnace.crafting_categories = {"smelting"}
datum:extend(brickFurnace)




data:extend(datum)