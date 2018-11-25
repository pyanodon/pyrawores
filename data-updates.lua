require('stdlib/data/data').create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))

--ADAPTATIONS

ITEM("copper-plate"):set("icon", "__pyrawores__/graphics/icons/copper-plate.png")
ITEM("iron-plate"):set("icon", "__pyrawores__/graphics/icons/iron-plate.png")
ITEM("copper-cable"):set("icon", "__pyrawores__/graphics/icons/copper-cable.png")

--RECIPES UPDATES

RECIPE('py-logistic-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-construction-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-roboport-mk01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-recharge-station-mk01'):add_ingredient({type = "item", name = "aluminium-plate", amount =10})
RECIPE('quartz-mine'):add_ingredient({type = "item", name = "py-construction-robot-01", amount =10})

RECIPE('distilator-mk04'):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})
RECIPE('automated-factory-mk04'):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})

RECIPE('ball-mill-mk04'):replace_ingredient('concrete', 'py-asphalt')

RECIPE('processing-unit'):add_ingredient({type = "item", name = "gold-plate", amount = 1})
RECIPE('electronic-circuit'):add_ingredient({type = "item", name = "nexelit-plate", amount = 1})

RECIPE("military-science-pack"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):replace_ingredient('grenade', 'stainless-steel')

RECIPE("laser-turret"):replace_ingredient('steel-plate', 'stainless-steel')
RECIPE("engine-unit"):replace_ingredient('steel-plate', 'aluminium-plate')
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("pumpjack"):add_ingredient({type = "item", name = "duralumin", amount = 10}):replace_ingredient('pipe', 'niobium-pipe')

RECIPE('gun-turret'):add_ingredient({type = "item", name = "duralumin", amount = 2})

RECIPE('battery'):replace_ingredient('iron-plate', 'zinc-plate')
RECIPE("oil-refinery"):replace_ingredient('pipe', 'niobium-pipe'):replace_ingredient('steel-plate', 'stainless-steel')
RECIPE('electric-furnace'):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE('steel-furnace'):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE('fast-transport-belt'):add_ingredient({type = "item", name = "stainless-steel", amount = 2})
RECIPE('fast-underground-belt'):add_ingredient({type = "item", name = "stainless-steel", amount = 3})
RECIPE('fast-splitter'):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE('express-transport-belt'):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE('express-underground-belt'):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE('express-splitter'):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE('fast-inserter'):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE('filter-inserter'):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE('stack-inserter'):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE('assembling-machine-3'):add_ingredient({type = "item", name = "super-steel", amount = 10})
RECIPE('assembling-machine-2'):replace_ingredient('iron-plate', 'stainless-steel')
RECIPE('locomotive'):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE('cargo-wagon'):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE('fluid-wagon'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('artillery-wagon'):replace_ingredient('steel-plate', 'super-steel'):replace_ingredient('pipe', 'niobium-pipe')
RECIPE('flying-robot-frame'):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE('substation'):replace_ingredient('copper-plate', 'super-steel')
RECIPE('uranium-fuel-cell'):replace_ingredient('iron-plate', 'lead-plate')
RECIPE('heat-pipe'):replace_ingredient('copper-plate', 'duralumin')
RECIPE('steam-turbine'):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('advanced-circuit'):replace_ingredient('copper-cable', 'tinned-cable')
RECIPE('high-tech-science-pack'):replace_ingredient('copper-cable', 'tinned-cable')
RECIPE('red-wire'):replace_ingredient('copper-cable', 'tinned-cable')
RECIPE('green-wire'):replace_ingredient('copper-cable', 'tinned-cable')
RECIPE('beacon'):replace_ingredient('copper-cable', 'tinned-cable')
RECIPE('red-wire'):replace_ingredient('copper-cable', 'tinned-cable')