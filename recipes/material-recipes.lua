--material recipes



--ore processing
local clayRecipe = table.deepcopy(data.raw["recipes"]["stone-brick"])
clayRecipe.ingredients = {{"alluvial-ore"}, 5}
clayRecipe.result = "clay"
clayRecipe.result_count = 2
clayRecipe.category = "crafting"
clayRecipe.enabled = true

data:extend{clayRecipe}

--basic smelting
local clayBrickRecipe = table.deepcopy(data.raw["recipes"]["stone-brick"])
clayBrickRecipe.ingredients = {{"clay"}, 2}
clayBrickRecipe.result = "clay-brick"
clayBrickRecipe.category = "basic-smelting"
clayBrickRecipe.enabled = true
data:extend{clayBrickRecipe}


