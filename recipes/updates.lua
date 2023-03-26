--updates

--helper function for replace_recipe_element
local function _replacerec(ing, o, n)
    for _,g in pairs(ing) do
        --some recipes define ingredients by {item, amount} and some by {type = "type", name = "name", amount = 123}
        --this covers both
        if g[1] == o then g[1] = n
        elseif g["name"] == o then g["name"] = n
        end
    end
end

--replace an element "old" in a recipe with an equivalent amount of element "new"
local function replace_recipe_element(rec, old, new)
    local base_rec = data.raw.recipe[rec]
    --if it has both normal and expensive versions, handle those
    if base_rec["normal"] ~= nil then
        _replacerec(base_rec.normal["ingredients"], old, new)
        _replacerec(base_rec.expensive["ingredients"], old, new)    
    else
        _replacerec(base_rec["ingredients"], old, new)
    end
end

--replace the element "old" in ALL recipes with equivalent amounts of element "new"
--run after making targeted replacements using the above, to catch anything else
local function replace_all_recipe_elements(old, new)
    for recname,base_rec in pairs(data.raw.recipe) do
        replace_recipe_element(recname, old, new)    
    end
end

--Replacements for base
replace_recipe_element("boiler", "stone-furnace", "brick-furnace")
replace_recipe_element("burner-mining-drill", "stone-furnace", "kiln")

--Replacements made for other mods
--TODO

--Replace anything missed
replace_all_recipe_elements("stone-furnace", "brick-furnace")