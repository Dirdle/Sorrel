--material recipes



--ore processing
local clayRecipe = table.deepcopy(data.raw["recipe"]["stone-brick"])
clayRecipe.name = "clay-recipe"
clayRecipe.ingredients = {{"alluvial-ore", 5}}
clayRecipe.result = "clay"
clayRecipe.result_count = 2
clayRecipe.category = "crafting"
clayRecipe.enabled = true

data:extend{clayRecipe}

--basic smelting
local clayBrickRecipe = table.deepcopy(data.raw["recipe"]["stone-brick"])
clayBrickRecipe.name = "clay-brick-recipe"
clayBrickRecipe.ingredients = {{"clay", 2}}
clayBrickRecipe.result = "clay-brick"
clayBrickRecipe.category = "basic-smelting"
clayBrickRecipe.enabled = true
data:extend{clayBrickRecipe}



