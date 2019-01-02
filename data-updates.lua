require("stdlib/data/data").create_data_globals()

if mods["pyfusionenergy"] then
    require("prototypes/updates/pyfusionenergy-updates")
end

if mods["pyhightech"] then
    require("prototypes/updates/pyhightech-updates")
    require("prototypes.ores.phosphate-rock-02")
    require("prototypes/buildings/phosphate-mine-02")
end

if mods["pycoalprocessing"] then
    require("prototypes/updates/pycoalprocessing-updates")
end



--ADAPTATIONS

ITEM("copper-plate"):set("icon", "__pyrawores__/graphics/icons/copper-plate.png")
ITEM("iron-plate"):set("icon", "__pyrawores__/graphics/icons/iron-plate.png")
ITEM("copper-cable"):set("icon", "__pyrawores__/graphics/icons/copper-cable.png")

--RECIPES UPDATES

RECIPE("iron-plate"):remove_ingredient("iron-ore"):add_ingredient({type = "item", name = "iron-ore", amount = 10}):set_fields {energy_required = 15}
RECIPE("steel-plate"):remove_ingredient("iron-plate"):add_ingredient({type = "item", name = "iron-plate", amount = 10}):set_fields {energy_required = 15}
RECIPE("copper-plate"):remove_ingredient("copper-ore"):add_ingredient({type = "item", name = "copper-ore", amount = 10}):set_fields {energy_required = 15}
RECIPE("electronic-circuit"):set_fields {energy_required = 4}
RECIPE("advanced-circuit"):add_ingredient({type = "item", name = "solder", amount = 2})
RECIPE("processing-unit"):add_ingredient({type = "item", name = "solder", amount = 3})

RECIPE("nexelit-plate"):remove_unlock("coal-processing-3")
RECIPE("steel-plate2"):remove_unlock("coal-processing-3")
RECIPE("crushed-iron"):remove_unlock("crusher")
RECIPE("crushed-copper"):remove_unlock("crusher")

RECIPE("py-logistic-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-construction-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-roboport-mk01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-recharge-station-mk01"):add_ingredient({type = "item", name = "aluminium-plate", amount = 10})
RECIPE("quartz-mine"):add_ingredient({type = "item", name = "py-construction-robot-01", amount = 10})

RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})

RECIPE("ball-mill-mk04"):replace_ingredient("concrete", "py-asphalt")

RECIPE("processing-unit"):add_ingredient({type = "item", name = "gold-plate", amount = 1})

RECIPE("military-science-pack"):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient("grenade", "aluminium-plate")

RECIPE("laser-turret"):replace_ingredient("steel-plate", "duralumin")
RECIPE("engine-unit"):replace_ingredient("steel-plate", "aluminium-plate")
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("pumpjack"):add_ingredient({type = "item", name = "duralumin", amount = 10}):replace_ingredient("pipe", "niobium-pipe")

RECIPE("gun-turret"):add_ingredient({type = "item", name = "duralumin", amount = 2})

RECIPE("battery"):replace_ingredient("iron-plate", "zinc-plate")
RECIPE("oil-refinery"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("steel-plate", "stainless-steel")
RECIPE("electric-furnace"):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE("steel-furnace"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("fast-transport-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 2})
RECIPE("fast-underground-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 3})
RECIPE("fast-splitter"):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE("express-transport-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-underground-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-splitter"):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE("fast-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("filter-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("stack-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("assembling-machine-2"):replace_ingredient("iron-plate", "chromium"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("locomotive"):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE("cargo-wagon"):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE("fluid-wagon"):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE("artillery-wagon"):replace_ingredient("steel-plate", "super-steel"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("flying-robot-frame"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("substation"):replace_ingredient("copper-plate", "super-steel")
RECIPE("uranium-fuel-cell"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("heat-pipe"):replace_ingredient("copper-plate", "duralumin")
RECIPE("steam-turbine"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("solar-panel"):add_ingredient({type = "item", name = "pyrite", amount = 5})

RECIPE("advanced-circuit"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("high-tech-science-pack"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("red-wire"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("green-wire"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("beacon"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("red-wire"):replace_ingredient("copper-cable", "tinned-cable")

RECIPE("wet-scrubber-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("wet-scrubber-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("wet-scrubber-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("wet-scrubber-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("casting-unit-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("casting-unit-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("casting-unit-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("casting-unit-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("flotation-cell-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("flotation-cell-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("flotation-cell-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("flotation-cell-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("leaching-station-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("leaching-station-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("leaching-station-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("leaching-station-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("casting-unit-mk01"):replace_ingredient("radar", "py-local-radar")
RECIPE("impact-crusher-mk01"):replace_ingredient("radar", "py-local-radar")

RECIPE("ppd"):replace_ingredient("hydrogen", "ammonia")
RECIPE("nuclear-reactor"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "stainless-steel")
RECIPE("heat-exchanger"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "aluminium-plate"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("rail"):add_ingredient({type = "item", name = "solder", amount = 4})
RECIPE("piercing-rounds-magazine"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("shotgun-shell"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("firearm-magazine"):remove_ingredient("iron-plate"):add_ingredient({type = "item", name = "lead-plate", amount = 2})
RECIPE("piercing-shotgun-shell"):add_ingredient({type = "item", name = "plastic-bar", amount = 1}):remove_ingredient("copper-plate")

data.raw.item["coal"].stack_size = 500
data.raw.item["iron-ore"].stack_size = 500
data.raw.item["copper-ore"].stack_size = 500
data.raw.item["stone"].stack_size = 500
data.raw.item["sulfur"].stack_size = 500
data.raw.item["iron-plate"].stack_size = 500
data.raw.item["copper-plate"].stack_size = 500
data.raw.item["steel-plate"].stack_size = 500
data.raw.item["stone-brick"].stack_size = 500