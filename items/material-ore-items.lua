--material-items

--ores

local alluvialOre = table.deepcopy(data.raw["item"]["coal"])
alluvialOre.name = "alluvial-ore"
alluvialOre.icons = {
    {
      icon = alluvialOre.icon,
      tint = {r=0.6, g=0.4, b=0.05,a=0.3}
    },
}

data:extend{alluvialOre}


--processed ores
local clay = table.deepcopy(data.raw["item"]["stone-brick"])
clay.name = "clay"
clay.icon = "__sorrel__/graphics/items/clay.png"

data:extend{clay}




