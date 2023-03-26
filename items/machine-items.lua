--machine-items

local kiln = table.deepcopy(data.raw["item"]["stone-furnace"])
kiln.name = "kiln"
kiln.icons = {
    {
      icon = kiln.icon,
      tint = {r=0.9,g=0.9,b=0.9,a=0.3}
    },
  }
kiln.place_result = "kiln"
data:extend{kiln}

local brickFurnace = table.deepcopy(data.raw["item"]["stone-furnace"])
brickFurnace.name = "brick-furnace"
brickFurnace.icons = {
    {
      icon = brickFurnace.icon,
      tint = {r=0.9,g=0.1,b=0.0,a=0.3}
    },
  }
brickFurnace.place_result = "brick-furnace"
data:extend{brickFurnace}
