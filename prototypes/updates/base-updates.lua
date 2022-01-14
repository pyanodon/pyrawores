-- TECH CHANGES
data.raw.technology['uranium-processing'].enabled = false
data.raw.technology['uranium-processing'].hidden = true
--data.raw.technology["uranium-processing"] = nil
TECHNOLOGY("kovarex-enrichment-process"):remove_prereq('uranium-processing'):add_prereq('uranium-mk02'):remove_prereq('rocket-fuel')
TECHNOLOGY("utility-science-pack"):remove_prereq('kovarex-enrichment-process')
TECHNOLOGY('robotics'):remove_prereq('construction-robotics'):add_prereq('logistic-robotics'):add_prereq('super-steel-mk01')
TECHNOLOGY("military"):add_prereq("lead-mk01")
TECHNOLOGY("fast-inserter"):add_prereq("smelters-mk01")
TECHNOLOGY("construction-robotics"):remove_prereq("steel-processing"):add_prereq("solder-mk01")
TECHNOLOGY("fluid-handling"):remove_prereq("automation"):remove_prereq("steel-processing"):add_prereq("lead-mk01"):add_prereq("smelters-mk01")
TECHNOLOGY('engine'):remove_pack('logistic-science-pack'):remove_prereq('logistic-science-pack')
TECHNOLOGY('heavy-armor'):remove_prereq('steel-processing')
TECHNOLOGY('solar-energy'):remove_prereq('logistic-science-pack'):add_prereq('pyrite')
TECHNOLOGY("advanced-electronics"):remove_prereq("fast-inserter"):remove_prereq("plastics"):add_prereq("fine-electronics"):add_prereq("solder-mk01")
TECHNOLOGY("automobilism"):remove_prereq("engine")
TECHNOLOGY("battery"):remove_prereq("sulfur-processing"):add_prereq("pyrite")
TECHNOLOGY("advanced-electronics-2"):add_prereq("gold")
TECHNOLOGY("explosives"):remove_prereq("sulfur-processing")
TECHNOLOGY("production-science-pack"):remove_prereq("uranium-processing")
TECHNOLOGY("nuclear-power"):remove_prereq("uranium-processing"):add_prereq("super-steel-mk01")
TECHNOLOGY("electric-energy-distribution-2"):remove_prereq("chemical-science-pack"):add_prereq("super-steel-mk01")
TECHNOLOGY("advanced-material-processing-2"):remove_prereq("chemical-science-pack"):add_prereq("super-steel-mk01")
TECHNOLOGY("logistics-2"):remove_prereq("niobium"):add_prereq("stainless-steel-mk01")
TECHNOLOGY("atomic-bomb"):add_pack("space-science-pack")

-- RECIPE UNLOCKS
RECIPE("uranium-processing"):remove_unlock('uranium-processing')
RECIPE("nuclear-fuel"):remove_unlock('kovarex-enrichment-process'):add_unlock('uranium-mk04')
RECIPE('flying-robot-frame'):add_unlock('robotics')
RECIPE("centrifuge"):remove_unlock('uranium-processing'):add_unlock('nuclear-fuel-reprocessing')


-- RECIPE CHANGES
RECIPE('atomic-bomb'):remove_ingredient('uranium-235'):add_ingredient({type = "item", name = "yellow-cake", amount = 5})
RECIPE("kovarex-enrichment-process"):set_fields{energy_required = 5}
RECIPE('electric-engine-unit'):remove_ingredient('copper-cable'):add_ingredient({type = "item", name = "copper-cable", amount = 150}):add_ingredient({type = "item", name = "aluminium-plate", amount = 10}):add_ingredient({type = "item", name = "bolts", amount = 20})--:remove_ingredient("engine-unit")
RECIPE('low-density-structure'):change_category('py-rawores-smelter')

RECIPE {
  type = "recipe",
  name = "uranium-fuel-cell",
  enabled = false,
  energy_required = 15,
  ingredients =
    {
      {"lead-plate", 2},
      {"niobium-plate", 2},
      {"fuelrod-mk01", 2}
    },
  results = {
      {"uranium-fuel-cell", 1}
  },
}:add_unlock('uranium-mk01')


-- ENTITY CHANGES
data.raw.reactor['nuclear-reactor'].use_fuel_glow_color = true

data.raw["assembling-machine"]["centrifuge"].crafting_speed = 4
data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots = 4

data.raw['underground-belt']['fast-underground-belt'].max_distance = 15
data.raw['underground-belt']['express-underground-belt'].max_distance = 30

data.raw.resource['coal'].autoplace = nil
data.raw['autoplace-control']['coal'] = nil


-- ITEM CHANGES
data.raw.item['uranium-fuel-cell'].fuel_glow_color = {0,1,0,1}
data.raw.item['uranium-fuel-cell'].subgroup = "py-rawores-items"
data.raw.item['uranium-fuel-cell'].order = "cae"


-- OTHER

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['coal'] then
      preset.basic_settings.autoplace_controls['coal'] = nil
    end
end
