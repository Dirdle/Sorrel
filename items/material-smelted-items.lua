--Smelted metals and fired bricks



local clayBrick = table.deepcopy(data.raw["item"]["stone-brick"])
clayBrick.name = "clay-brick"
clayBrick.icons = {
    {
    icon = clayBrick.icon,
    tint = {r=0.7,g=0.1,b=0.0,a=0.3}
    },
}

data:extend{clayBrick}

