--machine recipes

--new recipes to add
local kilnRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
kilnRecipe.enabled = TEST
kilnRecipe.category = "crafting"
kilnRecipe.name = "kiln-recipe"
kilnRecipe.ingredients = {{"stone",5}}
kilnRecipe.result = "kiln"
data:extend{kilnRecipe}

local brickFurnaceRecipe = table.deepcopy(data.raw["recipe"]["stone-furnace"])
brickFurnaceRecipe.enabled = TEST
kilnRecipe.category = "crafting"
brickFurnaceRecipe.name = "brick-furnace-recipe"
brickFurnaceRecipe.ingredients = {{"clay-brick", 5},{"clay", 2}}
brickFurnaceRecipe.result = "brick-furnace"
data:extend{brickFurnaceRecipe}

local foresterRecipe = {
    type = "recipe",
    name = "forester-recipe",
    category = "crafting",
    subgroup = "production-machine",
    order = "a[items]-b[forester]",
    normal = {
        enabled = TEST,
        energy_required = 5,
        ingredients = {
            { "alluvial-ore", 10 },
            { "wood",         10 },
        },
        result = "forester",
        result_count = 1,
        main_product = "forester",
        allow_as_intermediate = true, -- Added for 0.18.34/1.1.4
        always_show_made_in = true, -- Added for 0.18.34/1.1.4
        allow_decomposition = true, -- Added for 0.18.34/1.1.4
    },
    expensive = {
        enabled = TEST,
        --~ energy_required = 15,
        energy_required = 7.5,
        ingredients = {
            { "alluvial-ore", 20 },
            { "wood",         20 },
        },
        result = "forester",
        result_count = 1,
        main_product = "forester",
        allow_as_intermediate = true, -- Added for 0.18.34/1.1.4
        always_show_made_in = true, -- Added for 0.18.34/1.1.4
        allow_decomposition = true, -- Added for 0.18.34/1.1.4
    },
    icon = "__sorrel__/graphics/BioIndustries/Icons/Bio_Farm_Icon.png",
    icon_size = 64,
    icons = {
        {
            icon = "__sorrel__/graphics/BioIndustries/Icons/Bio_Farm_Icon.png",
            icon_size = 64,
        }
    },
}

data:extend{foresterRecipe}



