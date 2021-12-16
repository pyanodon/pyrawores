require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

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

	require("prototypes/updates/base-updates")

--ADAPTATIONS

ITEM("copper-plate"):set("icon", "__pyraworesgraphics__/graphics/icons/copper-plate.png")
ITEM("copper-plate"):set("icon_size", 32)
ITEM("iron-plate"):set("icon", "__pyraworesgraphics__/graphics/icons/iron-plate.png")
ITEM("iron-plate"):set("icon_size", 32)
ITEM("copper-cable"):set("icon", "__pyraworesgraphics__/graphics/icons/copper-cable.png")
ITEM("copper-cable"):set("icon_size", 32)

--RECIPES UPDATES

RECIPE("iron-plate"):remove_ingredient("iron-ore"):add_ingredient({type = "item", name = "iron-ore", amount = 8}):set_fields {energy_required = 10}
RECIPE("copper-plate"):remove_ingredient("copper-ore"):add_ingredient({type = "item", name = "copper-ore", amount = 8}):set_fields {energy_required = 10}

FUN.ing_adjust("steel-plate","iron-plate",10)
RECIPE("steel-plate"):set_fields {energy_required = 15}
RECIPE("electronic-circuit"):set_fields {energy_required = 4}
--RECIPE("electronic-circuit"):add_ingredient({type = "item", name = "solder", amount = 2})
RECIPE("advanced-circuit"):add_ingredient({type = "item", name = "solder", amount = 4})
RECIPE("processing-unit"):add_ingredient({type = "item", name = "solder", amount = 6})

RECIPE('guar-gum-plantation'):add_ingredient({type = "item", name = "duralumin", amount = 50})
RECIPE('guar-gum-plantation-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('guar-gum-plantation-mk03'):replace_ingredient("steel-plate", "super-steel")

RECIPE("nexelit-plate"):remove_unlock("nexelit")
RECIPE("steel-plate2"):remove_unlock("coal-processing-3")

RECIPE("py-local-radar"):set_fields {enabled = false}:add_unlock("engine")
RECIPE("mk02-locomotive"):add_ingredient({type = "item", name = "glass", amount = 150}):add_ingredient({type = "item", name = "duralumin", amount = 50})
RECIPE("mk02-wagon"):add_ingredient({type = "item", name = "glass", amount = 100}):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "nickel-plate", amount = 40})
RECIPE("mk02-fluid-wagon"):add_ingredient({type = "item", name = "glass", amount = 100}):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "nickel-plate", amount = 40})

RECIPE("py-logistic-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-construction-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-roboport-mk01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-recharge-station-mk01"):add_ingredient({type = "item", name = "aluminium-plate", amount = 10})
RECIPE("quartz-mine"):add_ingredient({type = "item", name = "py-construction-robot-01", amount = 10})

RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})

RECIPE("ball-mill-mk04"):replace_ingredient("concrete", "py-asphalt")

RECIPE("processing-unit"):add_ingredient({type = "item", name = "gold-plate", amount = 1})
RECIPE("small-lamp"):add_ingredient({type = "item", name = "glass", amount = 2})

RECIPE("military-science-pack"):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient("grenade", "aluminium-plate")

RECIPE("laser-turret"):replace_ingredient("steel-plate", "duralumin")
RECIPE("engine-unit"):remove_ingredient("steel-plate"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "super-steel", amount = 6}):replace_ingredient("copper-cable", "tinned-cable"):replace_ingredient("nuclear-fuel", "uranium-fuel-cell-mk03")
RECIPE("pumpjack"):add_ingredient({type = "item", name = "duralumin", amount = 10}):replace_ingredient("pipe", "niobium-pipe")

RECIPE("battery"):replace_ingredient("iron-plate", "zinc-plate")
RECIPE("oil-refinery"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("steel-plate", "stainless-steel")
RECIPE("electric-furnace"):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE("steel-furnace"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("fast-transport-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 2})
RECIPE("fast-underground-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 3})
RECIPE("fast-splitter"):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE("express-transport-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-underground-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-splitter"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("fast-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("filter-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("stack-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("assembling-machine-2"):replace_ingredient("iron-plate", "chromium"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("locomotive"):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE("cargo-wagon"):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("fluid-wagon"):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("artillery-wagon"):replace_ingredient("steel-plate", "super-steel"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("flying-robot-frame"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("substation"):replace_ingredient("copper-plate", "super-steel")
RECIPE("heat-pipe"):replace_ingredient("copper-plate", "duralumin")
RECIPE("steam-turbine"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("solar-panel"):add_ingredient({type = "item", name = "pyrite", amount = 5})

RECIPE("advanced-circuit"):replace_ingredient("copper-cable", "tinned-cable")
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
RECIPE("storage-tank"):replace_ingredient("iron-plate", "duralumin"):add_ingredient({type = "item", name = "lead-plate", amount = 10})

RECIPE("py-tank-1000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-1500"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-3000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-4000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-5000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-6500"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-7000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-8000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")

RECIPE("ppd"):replace_ingredient("hydrogen", "ammonia")
RECIPE("nuclear-reactor"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "stainless-steel")
RECIPE("heat-exchanger"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "aluminium-plate"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("rail"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("piercing-rounds-magazine"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("shotgun-shell"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("firearm-magazine"):remove_ingredient("iron-plate"):add_ingredient({type = "item", name = "lead-plate", amount = 2}):add_unlock('lead-mk01')
RECIPE("piercing-shotgun-shell"):add_ingredient({type = "item", name = "plastic-bar", amount = 1}):remove_ingredient("copper-plate")

RECIPE("construction-robot-ht"):replace_ingredient("py-construction-robot-01", "py-construction-robot-02")
RECIPE("logistic-robot-ht"):replace_ingredient("py-logistic-robot-01", "py-logistic-robot-02")
RECIPE("py-burner"):remove_ingredient("steel-furnace"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("nuclear-fuel"):replace_ingredient("uranium-235", "fuelrod-mk05")
TECHNOLOGY("py-burner"):remove_prereq("coal-processing-2"):add_prereq("coal-processing-1")

TECHNOLOGY("oil-processing"):remove_prereq("steel-processing"):add_prereq("iron-mk02")
TECHNOLOGY("desulfurization"):remove_prereq("sulfur-processing")
TECHNOLOGY("sulfur-processing"):remove_prereq("oil-processing"):add_prereq("coal-processing-1")


ITEM("coal").stack_size = 500
ITEM("iron-ore").stack_size = 500
ITEM("uranium-ore").stack_size = 500
ITEM("copper-ore").stack_size = 500
ITEM("chromium").stack_size = 500
ITEM("limestone").stack_size = 500
ITEM("lime").stack_size = 500
ITEM("stone").stack_size = 500
ITEM("sulfur").stack_size = 500
ITEM("iron-plate").stack_size = 500
ITEM("copper-plate").stack_size = 500
ITEM("steel-plate").stack_size = 500
ITEM("stone-brick").stack_size = 500
ITEM("iron-gear-wheel").stack_size = 500
ITEM("wood").stack_size = 500
ITEM("niobium-plate").stack_size = 500
ITEM("niobium-plate").stack_size = 500

for _, player in DATA:pairs('character') do
    player.crafting_categories = player.String_Array(player.crafting_categories or {}) + 'handcrafting'
end
for _, controller in DATA:pairs('god-controller') do
    controller.crafting_categories = controller.String_Array(controller.crafting_categories or {}) + 'handcrafting'
end

local recipes_list =
	{
  "diesel",
  "diesel2",
  "powdered-ralesia-seeds",
  "starch",
  "starch-2",
  "py-sodium-hydroxide",
  "syngas-distilation",
  "bonemeal-salt",
  "mukmoux-fat-salt",
  "p2s5",
  "p2s5-2",
  "ammonium-chloride",
  "duralumin-1",
  "duralumin-2",
  "battery-1",
  "battery-2",
  "tinned-cable",
  "solder-0",
  "solder-1",
  "solder-2",
  "solder-3",
  "pyrite-burn",
  "pyrite-make",
  "sulfuric-acid-01",
  "sodium-carbonate-1",
  "sodium-sulfate-1",
  "ammo-initial",
  "alamac",
  "cresylic-acid",
  "aerofloat-15",
  "acid-solvent",
  "petroleum-sulfonates",
  "xylenol-1",
  "xylenol-2",
  "z3-reagent",
  "armac-12",
  "mibc",
  "al-tailings-separation",
  "pregnant-solution-01",
  "vanadium-mixture",
  "fiberboard-2",
  "xylenol-3",
  "ammonium-chloride-2",
  "ammonia2",
  "fertilizer-2",
  "cyanic-acid-01",
  "collagen-glycerol",
  "phosphate-mine-02",
  "methanol-from-hydrogen",
  "glycerol-hydrogen",
  "extract-limestone-01"
}

--adding to module limitation list
FUN.productivity(recipes_list)
