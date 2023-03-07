--material-items

--ores

local alluvialOre = table.deepcopy(data.raw["item"]["iron-ore"])
alluvialOre.name = "alluvial-ore"
alluvialOre.icon = "__sorrel__/graphics/resources/alluvial-ore.png"
alluvialOre.pictures =
{
  { size = 64, filename = "__sorrel__/graphics/resources/alluvial-ore.png",   scale = 0.25, mipmap_count = 4 },
  { size = 64, filename = "__sorrel__/graphics/resources/alluvial-ore-1.png", scale = 0.25, mipmap_count = 4 },
}
data:extend{alluvialOre}


--processed ores
local clay = table.deepcopy(data.raw["item"]["stone-brick"])
clay.name = "clay"
clay.icon = "__sorrel__/graphics/items/clay.png"

data:extend{clay}




