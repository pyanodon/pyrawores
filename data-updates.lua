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