require "prototypes/updates/base-updates"
require "prototypes/updates/pycoalprocessing-updates"
require "prototypes/updates/pyindustry-updates"

if mods["pyfusionenergy"] then
  require "prototypes/updates/pyfusionenergy-updates"
end

if mods["pyhightech"] then
  require "prototypes/updates/pyhightech-updates"
end

if mods["pypetroleumhandling"] then
  require "prototypes/updates/pypetroleumhandling-updates"
end

if mods["pyalienlife"] then
  require "prototypes/updates/pyalienlife-updates"
end

--ADAPTATIONS

ITEM("copper-plate"):set("icon", "__pyraworesgraphics__/graphics/icons/copper-plate.png")
ITEM("copper-plate"):set("icon_size", 32)
ITEM("iron-plate"):set("icon", "__pyraworesgraphics__/graphics/icons/iron-plate.png")
ITEM("iron-plate"):set("icon_size", 32)
ITEM("copper-cable"):set("icon", "__pyraworesgraphics__/graphics/icons/copper-cable.png")
ITEM("copper-cable"):set("icon_size", 32)

--RECIPES UPDATES

RECIPE("iron-plate"):remove_ingredient("iron-ore"):add_ingredient {type = "item", name = "iron-ore", amount = 8}:set_fields {energy_required = 10}
RECIPE("copper-plate"):remove_ingredient("copper-ore"):add_ingredient {type = "item", name = "copper-ore", amount = 8}:set_fields {energy_required = 10}

RECIPE("steel-plate"):remove_ingredient("iron-plate"):add_ingredient {type = "item", name = "coke", amount = 5}:add_ingredient {type = "item", name = "iron-ore", amount = 20}:add_ingredient {type = "item", name = "limestone", amount = 5}:set_fields {energy_required = 15}.category = "advanced-foundry"
RECIPE("electronic-circuit"):set_fields {energy_required = 4}
--RECIPE("electronic-circuit"):add_ingredient({type = "item", name = "solder", amount = 2})
RECIPE("advanced-circuit"):add_ingredient {type = "item", name = "solder", amount = 4}
RECIPE("processing-unit"):add_ingredient {type = "item", name = "solder", amount = 6}

RECIPE("guar-gum-plantation"):add_ingredient {type = "item", name = "duralumin", amount = 50}
RECIPE("guar-gum-plantation-mk02"):add_ingredient {type = "item", name = "stainless-steel", amount = 20}
RECIPE("guar-gum-plantation-mk03"):replace_ingredient("steel-plate", "super-steel")

RECIPE("mk02-locomotive"):add_ingredient {type = "item", name = "glass", amount = 150}:add_ingredient {type = "item", name = "duralumin", amount = 50}
RECIPE("mk02-wagon"):add_ingredient {type = "item", name = "glass", amount = 100}:add_ingredient {type = "item", name = "duralumin", amount = 20}:add_ingredient {type = "item", name = "nickel-plate", amount = 40}
RECIPE("mk02-fluid-wagon"):add_ingredient {type = "item", name = "glass", amount = 100}:add_ingredient {type = "item", name = "duralumin", amount = 20}:add_ingredient {type = "item", name = "nickel-plate", amount = 40}

RECIPE("py-logistic-robot-mk01"):add_ingredient {type = "item", name = "solder", amount = 5}
RECIPE("py-construction-robot-mk01"):replace_ingredient("iron-plate", "aluminium-plate"):add_ingredient {type = "item", name = "solder", amount = 5}
TECHNOLOGY("construction-robotics"):remove_prereq("steel-processing"):remove_prereq("automation")

RECIPE("py-roboport-mk01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-roboport-mk02"):replace_ingredient("steel-plate", "stainless-steel"):add_ingredient {type = "item", name = "niobium-plate", amount = 5}:add_ingredient {type = "item", name = "aluminium-plate", amount = 15}
RECIPE("py-roboport-mk03"):add_ingredient {type = "item", name = "super-steel", amount = 30}
RECIPE("py-recharge-station-mk01"):add_ingredient {type = "item", name = "aluminium-plate", amount = 10}
RECIPE("quartz-mine"):add_ingredient {type = "item", name = "py-construction-robot-mk01", amount = 10}

RECIPE("distilator-mk04"):add_ingredient {type = "item", name = "accumulator-mk01", amount = 2}
RECIPE("automated-factory-mk04"):add_ingredient {type = "item", name = "accumulator-mk01", amount = 2}

RECIPE("ball-mill-mk04"):replace_ingredient("concrete", "py-asphalt")

RECIPE("processing-unit"):add_ingredient {type = "item", name = "gold-plate", amount = 1}

if not mods["aai-industry"] then
  RECIPE("small-lamp"):add_ingredient {type = "item", name = "glass", amount = 2}
end

RECIPE("military-science-pack"):add_ingredient {type = "item", name = "lead-plate", amount = 20}:replace_ingredient("grenade", "aluminium-plate")

RECIPE("laser-turret"):replace_ingredient("steel-plate", "duralumin")
RECIPE("engine-unit"):remove_ingredient("steel-plate"):add_ingredient {type = "item", name = "aluminium-plate", amount = 5}
RECIPE("electric-engine-unit"):add_ingredient {type = "item", name = "duralumin", amount = 5}
RECIPE("utility-science-pack"):add_ingredient {type = "item", name = "super-alloy", amount = 5}:replace_ingredient("copper-cable", "tinned-cable"):replace_ingredient("nuclear-fuel", "uranium-fuel-cell-mk03")
RECIPE("pumpjack"):add_ingredient {type = "item", name = "duralumin", amount = 10}:replace_ingredient("pipe", "niobium-pipe")

RECIPE("battery"):replace_ingredient("iron-plate", "zinc-plate")
--RECIPE("oil-refinery"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("steel-plate", "stainless-steel")
RECIPE("electric-furnace"):add_ingredient {type = "item", name = "super-steel", amount = 15}
--RECIPE("steel-furnace"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("fast-transport-belt"):add_ingredient {type = "item", name = "stainless-steel", amount = 2}
RECIPE("fast-underground-belt"):add_ingredient {type = "item", name = "stainless-steel", amount = 3}
RECIPE("fast-splitter"):add_ingredient {type = "item", name = "stainless-steel", amount = 5}
RECIPE("express-transport-belt"):add_ingredient {type = "item", name = "super-steel", amount = 5}
RECIPE("express-underground-belt"):add_ingredient {type = "item", name = "super-steel", amount = 5}
RECIPE("express-splitter"):add_ingredient {type = "item", name = "super-steel", amount = 5}
RECIPE("fast-inserter"):add_ingredient {type = "item", name = "duralumin", amount = 5}
RECIPE("bulk-inserter"):add_ingredient {type = "item", name = "duralumin", amount = 5}
RECIPE("assembling-machine-3"):add_ingredient {type = "item", name = "stainless-steel", amount = 10}
RECIPE("assembling-machine-2"):replace_ingredient("iron-plate", "chromium"):add_ingredient {type = "item", name = "duralumin", amount = 5}
RECIPE("locomotive"):add_ingredient {type = "item", name = "duralumin", amount = 25}
RECIPE("cargo-wagon"):add_ingredient {type = "item", name = "titanium-plate", amount = 50}
RECIPE("fluid-wagon"):add_ingredient {type = "item", name = "titanium-plate", amount = 50}
RECIPE("artillery-wagon"):replace_ingredient("steel-plate", "super-steel"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("flying-robot-frame"):add_ingredient {type = "item", name = "duralumin", amount = 5}
RECIPE("substation"):replace_ingredient("copper-plate", "super-steel")
RECIPE("heat-pipe"):replace_ingredient("copper-plate", "duralumin")
RECIPE("steam-turbine"):add_ingredient {type = "item", name = "super-steel", amount = 20}
RECIPE("solar-panel"):add_ingredient {type = "item", name = "pyrite", amount = 5}

RECIPE("advanced-circuit"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("beacon"):replace_ingredient("copper-cable", "tinned-cable")

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
RECIPE("storage-tank"):replace_ingredient("iron-plate", "duralumin"):add_ingredient {type = "item", name = "lead-plate", amount = 10}

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
RECIPE("rail"):add_ingredient {type = "item", name = "solder", amount = 5}
RECIPE("piercing-rounds-magazine"):add_ingredient {type = "item", name = "lead-plate", amount = 1}:remove_ingredient("copper-plate")
RECIPE("shotgun-shell"):add_ingredient {type = "item", name = "lead-plate", amount = 1}:remove_ingredient("copper-plate")
RECIPE("firearm-magazine"):remove_ingredient("copper-plate"):add_ingredient {type = "item", name = "lead-plate", amount = 2}
RECIPE("piercing-shotgun-shell"):add_ingredient {type = "item", name = "plastic-bar", amount = 1}:remove_ingredient("copper-plate")

RECIPE("py-construction-robot-mk04"):replace_ingredient("py-construction-robot-mk01", "py-construction-robot-mk02")
RECIPE("py-logistic-robot-mk04"):replace_ingredient("py-logistic-robot-mk01", "py-logistic-robot-mk02")
RECIPE("py-burner"):remove_ingredient("steel-furnace"):add_ingredient {type = "item", name = "titanium-plate", amount = 20}
RECIPE("nuclear-fuel"):replace_ingredient("uranium-235", "fuelrod-mk05")
TECHNOLOGY("py-burner"):remove_prereq("advanced-material-processing"):remove_pack("logistic-science-pack")

TECHNOLOGY("oil-processing"):remove_prereq("steel-processing")
TECHNOLOGY("desulfurization"):remove_prereq("sulfur-processing")
TECHNOLOGY("sulfur-processing"):remove_prereq("oil-processing")

ITEM("sulfur").stack_size = 100
ITEM("landfill").stack_size = 1000

local recipes_list =
{
  "ceramic-2",
  "acid-solvent",
  "aerofloat-15",
  "alamac",
  "ammo-initial",
  "ammonia2",
  "ammonium-chloride-2",
  "ammonium-chloride",
  "armac-12",
  "battery-1",
  "battery-2",
  "bonemeal-salt",
  "collagen-glycerol",
  "cresylic-acid",
  "cyanic-acid-01",
  "diesel",
  "diesel2",
  "extract-limestone-01",
  "fertilizer-2",
  "glycerol-hydrogen",
  "methanol-from-hydrogen",
  "mibc",
  "mukmoux-fat-salt",
  "p2s5-2",
  "p2s5",
  "petroleum-sulfonates",
  "pregnant-solution-01",
  "py-sodium-hydroxide",
  "pyrite-burn",
  "pyrite-make",
  "sodium-carbonate-1",
  "sodium-sulfate-1",
  "solder-0",
  "solder-1",
  "solder-2",
  "solder-3",
  "starch-2",
  "starch",
  "sulfuric-acid-01",
  "syngas-distilation",
  "tinned-cable",
  "vanadium-mixture",
  "xylenol-3",
  "z3-reagent",
}

--adding to module limitation list
py.allow_productivity(recipes_list)

if register_cache_file ~= nil then
  register_cache_file({"pycoalprocessing", "pyindustry", "pyrawores"}, "__pyrawores__/cached-configs/pycoalprocessing+pyindustry+pyrawores.lua")
  register_cache_file({"pycoalprocessing", "pyfusionenergy", "pyindustry", "pyrawores"}, "__pyrawores__/cached-configs/pycoalprocessing+pyfusionenergy+pyindustry+pyrawores.lua")
end
