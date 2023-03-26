--control

require("constants")

--Define utility functions
local function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

local function length(table_t)
    local n = 0
    for k, v in pairs(table_t) do
        n = n + 1
    end
    return n
end

--forester placement


script.on_event(defines.events.on_built_entity, 
    function(event)
        local forester = event.created_entity      
        --get a table of tree entities within a distance of the forester
        --there are a lot of types of tree
        local trees = forester.surface.find_entities_filtered{position=forester.position, radius=Forester_Tree_Radius, type="tree"}

        --print how many trees that is (temporary action)
        game.print("At position " .. dump(forester.position))
        game.print("That's " .. length(trees) .. " trees!")
    end,
    --triggered when a non-ghost forester is built
    { { filter = "name", name = "forester" }, { filter = "ghost", mode = "and", invert = true } }
)

--forester removal

--forester tree added 

--forester tree removed 