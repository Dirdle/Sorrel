--Smelted metals and fired bricks



local clayBrick = table.deepcopy(data.raw["item"]["stone-brick"])
clayBrick.name = "clay-brick"
clayBrick.icons = {
    {
    icon = clayBrick.icon,
    tint = {r=0.65,g=0.2,b=0.05,a=0.3}
    },
}

data:extend{clayBrick}

