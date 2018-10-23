require('stdlib/data/data').create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))

--ADAPTATIONS

TECHNOLOGY('crusher'):add_prereq('machines-mk01')

RECIPE('hydrocyclone'):replace_ingredient('centrifuge', 'classifier')
RECIPE('hydrocyclone'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('mixer'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk01')
RECIPE('mixer'):replace_ingredient('iron-plate', 'aluminium-plate')

RECIPE('centrifugal-pan'):remove_unlock('diamond-mining'):add_unlock('machines-mk03')

RECIPE('agitador'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk03')
RECIPE('sodium-clhorate'):remove_unlock('vanadium-processing'):add_unlock('machines-mk02'):change_category('electrolyzer')


--RECIPES UPDATES

RECIPE('py-logistic-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-construction-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-roboport-mk01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-recharge-station-mk01'):add_ingredient({type = "item", name = "aluminium-plate", amount =10})
RECIPE('quartz-mine'):add_ingredient({type = "item", name = "py-construction-robot-01", amount =10})