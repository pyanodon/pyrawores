require('stdlib/data/data').create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
end

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))

--ADAPTATIONS



--RECIPES UPDATES

RECIPE('py-logistic-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-construction-robot-01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-roboport-mk01'):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE('py-recharge-station-mk01'):add_ingredient({type = "item", name = "aluminium-plate", amount =10})
RECIPE('quartz-mine'):add_ingredient({type = "item", name = "py-construction-robot-01", amount =10})
RECIPE("niobium-plate"):replace_ingredient('coal', 'salt')
RECIPE("sulfur-crudeoil"):replace_ingredient('iron-ore', 'salt')
RECIPE('zinc-chloride'):replace_ingredient('water', 'hydrogen-chloride'):add_ingredient({type = "fluid", name = "hydrogen", amount =20})
RECIPE('olefin'):replace_ingredient('water','hydrogen')
RECIPE('gasoline'):replace_ingredient('water','hydrogen')
RECIPE('ref-to-light-oil'):add_ingredient({type = "fluid", name = "hydrogen", amount =250})
RECIPE('combustion-olefin'):add_ingredient({type = "fluid", name = "hydrogen", amount =150})
RECIPE('ralesia'):replace_ingredient('water','hydrogen')
RECIPE('diborane'):replace_ingredient('water','hydrogen')
RECIPE('ppd'):replace_ingredient('water','hydrogen')
RECIPE('aromatics2'):replace_ingredient('water','hydrogen')
RECIPE('niobium-complex'):replace_ingredient('water','hydrogen-chloride')