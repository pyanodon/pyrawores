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



--RECIPES UPDATES

RECIPE('py-logistic-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-construction-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-roboport-mk01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-recharge-station-mk01'):add_ingredient({type = "item", name = "aluminium-plate", amount =10})
RECIPE('quartz-mine'):add_ingredient({type = "item", name = "py-construction-robot-01", amount =10})
