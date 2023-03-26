--rem

--list of prototype names to remove from the game
local disabledPrototypes = {
    "stone-furnace"
}

--for prototypes listed to remove, remove items, entities and recipes with that name
--can't prevent other mods referencing these prototypes directly, I suppose
for _,v in pairs(disabledPrototypes) do
    data.raw.item[v] = nil
    data.raw.recipe[v] = nil
    data.raw.furnace[v] = nil
    --... additional entity types
end