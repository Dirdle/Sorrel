--machine recipes

--new recipes to add
local kilnRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
kilnRecipe.enabled = true
kilnRecipe.category = "crafting"
kilnRecipe.name = "kiln-recipe"
kilnRecipe.ingredients = {{"stone",5}}
kilnRecipe.result = "kiln"
data:extend{kilnRecipe}

local brickFurnaceRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
brickFurnaceRecipe.enabled = true
kilnRecipe.category = "crafting"
brickFurnaceRecipe.name = "brick-furnace-recipe"
brickFurnaceRecipe.ingredients = {{"clay-brick", 5},{"clay", 2}}
brickFurnaceRecipe.result = "brick-furnace"
data:extend{brickFurnaceRecipe}






