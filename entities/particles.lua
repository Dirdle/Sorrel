--particles

--creating these seems difficult and gains little, so they're likely to remain inappropriate copies forever

--mining particles
local alluvialOreParticle = table.deepcopy(data.raw["optimized-particle"]["copper-ore-particle"])
alluvialOreParticle.name = "alluvial-ore-particle"

data:extend{alluvialOreParticle}