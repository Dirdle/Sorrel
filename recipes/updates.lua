--updates

--replace an element "old" in a recipe with an equivalent amount of element "new"
local function replace_recipe_element(rec, old, new)
    for k,v in pairs(data.raw.recipe[rec]) do
        if v[1] == old then v[1] = new
        end
    end
end

--replace the element "old" in ALL recipes with equivalent amounts of element "new"
--local function replace_all_recipe_elements(old, new)
----...
--end


replace_recipe_element("boiler", "stone-furnace", "brick-furnace")
replace_recipe_element("burner-mining-drill", "stone-furnace", "kiln")