local fun = require("prototypes/functions/functions")

TECHNOLOGY("advanced-mining-facilities"):remove_pack("chemical-science-pack"):remove_prereq("diamond-mining"):add_prereq("iron-mk02"):remove_prereq('uranium-processing')
TECHNOLOGY("molybdenum-processing"):remove_pack("chemical-science-pack"):remove_pack('production-science-pack'):remove_prereq('production-science-pack')

RECIPE("compressor-mk01"):remove_unlock("regolite-mining"):remove_unlock("helium-processing"):remove_unlock("liquid-petroleum-processing"):remove_unlock("advanced-oil-processing"):add_unlock("fluid-processing-machines-1")
RECIPE("acidgas-2"):remove_unlock("advanced-oil-processing"):add_unlock("machines-mk02")
RECIPE("olefin"):remove_unlock("fuel-production-mk02"):add_unlock("fuel-production")
--RECIPE("gasoline"):remove_unlock("fuel-production"):add_unlock("machines-mk02")
RECIPE("pressured-air"):set_fields {energy_required = 1}

ITEM("molybdenum-plate").stack_size = 500

RECIPE('pressured-air'):remove_unlock('helium-processing'):add_unlock('coal-processing-1')
RECIPE('vacuum-pump-mk01'):remove_unlock('advanced-mining-facilities'):add_unlock('coal-processing-1')

RECIPE("aramid"):add_ingredient({type = 'item', name = 'molybdenum-plate', amount = 5}):change_category('nmf')


RECIPE("steam-heating"):remove_ingredient("fuelrod-mk01"):add_ingredient({type = "item", name = "fuelrod-mk01", amount = 1})
RECIPE("hydrocyclone-mk01"):replace_ingredient("centrifuge", "classifier")
--RECIPE("hydrocyclone-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("py-heat-exchanger"):remove_unlock("fusion-mk01"):add_unlock("machines-mk02")

--RECIPE("mixer-mk01"):remove_unlock("advanced-mining-facilities"):remove_unlock("basic-electronics"):add_unlock("machines-mk01")
RECIPE("mixer-mk01"):replace_ingredient("iron-plate", "aluminium-plate"):replace_ingredient("chemical-plant-mk01", "washer")

RECIPE("secondary-crusher-mk01"):remove_unlock("diamond-mining"):add_unlock("crusher")
RECIPE("secondary-crusher-mk01"):replace_ingredient("electric-engine-unit", "engine-unit"):remove_ingredient("nbfe-alloy"):add_ingredient({type = "item", name = "duralumin", amount = 20})

RECIPE("automated-screener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("filtration-media"):remove_unlock("filtration-mk02")

RECIPE("jig-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk02")
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):replace_ingredient('advanced-circuit', 'electronic-circuit'):replace_ingredient('electric-engine-unit','engine-unit')
RECIPE("control-unit"):replace_ingredient("iron-plate", "stainless-steel")

fun.results_replacer("u-79", "dirty-water-heavy", "u-waste")

RECIPE("centrifugal-pan-mk01"):remove_unlock("diamond-mining"):add_unlock("fluid-processing-machines-1")
RECIPE("centrifugal-pan-mk01"):replace_ingredient("advanced-circuit", "electronic-circuit")

--RECIPE("agitator-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("sodium-chlorate"):remove_unlock("vanadium-processing"):add_unlock("salts"):change_category("electrolyzer"):remove_ingredient("water-saline"):add_ingredient({type = "item", name = "salt", amount = 10})

RECIPE("purified-quartz"):change_category("pan")
RECIPE("prepared-quartz"):change_category("pan")
RECIPE("quartz-pulp-01"):change_category("hydrocyclone")
RECIPE("al-pulp-01"):change_category("mixer")
RECIPE("al-pulp-02"):change_category("agitator")
RECIPE("al-pulp-04"):change_category("agitator")
RECIPE("crystalized-sodium-aluminate"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "pressured-air", amount = 500})
RECIPE("cold-clean-air"):replace_ingredient("filtration-media", "biofilm")
RECIPE("tin-concentrate-3"):remove_ingredient("heavy-oil"):add_ingredient({type = "fluid", name = "grease", amount = 50})
RECIPE("ti-pulp-02"):remove_ingredient("heavy-oil"):add_ingredient({type = "fluid", name = "grease", amount = 50})
RECIPE("unslimed-iron-2"):change_category("hydrocyclone")

RECIPE("grade-4-chromite"):change_category("hydrocyclone")

RECIPE("molybdenum-plate"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100}):change_category("electrolyzer")
RECIPE("agitator-mk01"):replace_ingredient("iron-plate", "glass")
RECIPE("mixer-mk01"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("diamond-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("regolite-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("jig-mk01"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("centrifugal-pan-mk01"):replace_ingredient("pipe", "niobium-pipe"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("compressor-mk01"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
if not mods['pyalienlife'] then
RECIPE("genlab-mk01"):add_ingredient({type = "item", name = "glass", amount = 50})
end
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "glass", amount = 50}):replace_ingredient("fast-transport-belt", "transport-belt"):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "glass", amount = 300}):add_ingredient({type = "item", name = "super-steel", amount = 100})
RECIPE("fusion-reactor-mk02"):add_ingredient({type = "item", name = "super-steel", amount = 100}):replace_ingredient("mixer-mk01","mixer-mk02")
RECIPE("regolite-mine"):add_ingredient({type = "item", name = "automated-factory-mk02", amount = 1})
RECIPE("molybdenum-concentrate"):replace_ingredient("water", "nitrogen")
RECIPE("nmf-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("aramid")

if not mods["pyalienlife"] then
RECIPE("phytoplankton"):replace_ingredient("iron-ore", {"grade-1-tin", 1})
end

RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "ammonia")
RECIPE("vpulp-precip"):replace_ingredient("water", "ammonia"):add_ingredient({type = "item", name = "sodium-bisulfate", amount = 1})
RECIPE("super-alloy"):replace_ingredient("steel-plate", "nickel-plate"):add_ingredient({type = "item", name = "aramid", amount = 1}):change_category('py-rawores-smelter')
RECIPE("calcinate-separation"):add_result({type = "item", name = "ore-quartz", amount = 1, probability = 0.6})
--RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE("py-turbine"):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "super-alloy", amount = 20})

 --RECIPES
RECIPE("kmauts-ration"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("helium"):add_ingredient({type = "fluid", name = "hydrogen", amount = 10})
RECIPE("nbti-alloy"):replace_ingredient("steel-plate", "titanium-plate"):add_ingredient({type = "fluid", name = "nitrogen", amount = 150}):change_category('py-rawores-smelter')
RECIPE("sc-wire"):replace_ingredient("iron-plate", "tin-plate"):add_ingredient({type = "item", name = "optical-fiber", amount = 5})
RECIPE("ferrite"):add_ingredient({type = "item", name = "zinc-plate", amount = 10})
RECIPE("sc-unit"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 100})
RECIPE("boron-mixture"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("boron"):add_ingredient({type = "fluid", name = "hydrogen-chloride", amount = 300})
RECIPE("blanket"):add_ingredient({type = "item", name = "nexelit-plate", amount = 10})
RECIPE("blanket"):add_ingredient({type = "item", name = "lead-plate", amount = 40})
RECIPE("blanket"):add_ingredient({type = "item", name = "super-steel", amount = 40})
RECIPE("lead-container"):replace_ingredient("iron-plate", "lead-plate"):add_ingredient({type = "item", name = "aramid", amount = 3})
RECIPE("science-coating"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("agzn-alloy"):replace_ingredient("iron-plate", "silver-plate"):replace_ingredient("stone", "zinc-plate"):change_category('py-rawores-smelter')
RECIPE("silver-foam"):replace_ingredient("water", "hydrogen-chloride")
RECIPE("tar-gasification"):remove_ingredient("water"):add_ingredient({type = "fluid", name = "pressured-air", amount = 50})
RECIPE("tpa"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 50})
RECIPE("anthraquinone"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 10})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "super-alloy", amount = 10})
RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "super-alloy", amount = 40})
RECIPE("express-splitter"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("express-underground-belt"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("express-transport-belt"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("nuclear-reactor"):add_ingredient({type = "item", name = "super-steel", amount = 100})
RECIPE("substation"):replace_ingredient("steel", "super-alloy")
RECIPE("vpulp2"):replace_ingredient("crushed-iron", "iron-ore-dust")
RECIPE("molybdenum-filtration"):remove_ingredient("vacuum")
RECIPE("low-density-structure"):replace_ingredient("niobium-plate", "super-steel"):remove_ingredient("steel-plate")
RECIPE("automated-screener-mk01"):replace_ingredient("electric-engine-unit", "engine-unit"):replace_ingredient("ground-borer", "electric-mining-drill"):replace_ingredient("advanced-circuit", "electronic-circuit"):remove_ingredient("niobium-plate")
RECIPE("py-heat-exchanger"):replace_ingredient("processing-unit", "advanced-circuit")
RECIPE("sodium-bisulfate"):change_category("mixer")
RECIPE("mibc"):change_category("mixer")
RECIPE("thickener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("fluid-processing-machines-1"):replace_ingredient("electric-engine-unit","engine-unit")

----PYFE---

RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("py-heat-exchanger-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('borax-mine'):remove_unlock('boron')

-----PYCP---

RECIPE("distilator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "sc-unit", amount = 4})
RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "agzn-alloy", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("advanced-foundry-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("advanced-foundry-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("automated-factory-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("ball-mill-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("ball-mill-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("borax-mine-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("borax-mine-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("botanical-nursery-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("botanical-nursery-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("carbon-filter-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("carbon-filter-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("classifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 1}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("classifier-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("desulfurizator-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("desulfurizator-unit-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("glassworks-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("glassworks-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("ground-borer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("ground-borer-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("evaporator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("evaporator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fawogae-plantation-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agzn-alloy", amount = 15})
RECIPE("fawogae-plantation-mk04"):add_ingredient({type = "item", name = "silver-foam", amount = 10}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fluid-separator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("fluid-separator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fts-reactor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("fts-reactor-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("gasifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("gasifier-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("hpf-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("hpf-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("jaw-crusher-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE("jaw-crusher-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("methanol-reactor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("methanol-reactor-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("olefin-plant-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("olefin-plant-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("power-house-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("power-house-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("quenching-tower-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("quenching-tower-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("rectisol-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("rectisol-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("sand-extractor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("sand-extractor-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("soil-extractormk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 1}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("soil-extractormk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("solid-separator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("solid-separator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("tar-processing-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("tar-processing-unit-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("wpu-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("wpu-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("washer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("washer-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

--PYRO ENTITIES UPDATES

RECIPE("bof-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("bof-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("casting-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("casting-unit-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("eaf-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("eaf-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("electrolyzer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("electrolyzer-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("flotation-cell-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("flotation-cell-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("hydroclassifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("hydroclassifier-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("impact-crusher-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE("impact-crusher-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("leaching-station-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("leaching-station-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("scrubber-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("scrubber-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("wet-scrubber-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("wet-scrubber-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("smelter-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("smelter-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("chemical-plant-mk03"):add_ingredient({type = "item", name = "sc-unit", amount = 10}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 20})
RECIPE("chemical-plant-mk04"):add_ingredient({type = "item", name = "control-unit", amount = 10})

RECIPE("sinter-unit"):add_ingredient({type = "item", name = "super-alloy", amount = 15})

RECIPE("gasoline"):add_ingredient({type = "fluid", name = "hydrogen", amount = 50})

RECIPE('acetylene'):remove_unlock('filtration-mk02'):add_unlock('coal-processing-1'):change_category('gasifier')

data.raw.resource["ore-titanium"].minable.required_fluid = "acetylene"
data.raw.resource["quartz-rock"].minable.required_fluid = "acetylene"
data.raw.resource["ore-lead"].minable.required_fluid = "acetylene"
data.raw.resource["uranium-rock"].minable.required_fluid = "gasoline"

RECIPE {
    type = "recipe",
    name = "al-tailings-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-tailings", amount = 300}
    },
    results = {
        {type = "fluid", name = "vanadates", amount = 15},
        {type = "fluid", name = "dirty-water-heavy", amount = 75}
    },
    main_product = "vanadates",
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadates.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("aluminium-mk03")

--NITROGEN 2 --

RECIPE {
    type = "recipe",
    name = "nitrogen-pyfe",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "fluid", name = "cold-clean-air", amount = 40},
        {type = "item", name = "active-carbon", amount = 1}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 8000},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    main_product = "nitrogen",
    subgroup = "py-rawores-fluids",
    order = "dac"
}:add_unlock("nitrogen-mk03")

RECIPE {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = false,
    energy_required = 0.3,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam", amount = 100}
    },
    main_product = "liquid-nitrogen",
    icon = "__pyfusionenergygraphics__/graphics/icons/compress-nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}:add_unlock("nitrogen-mk02")

RECIPE {
    type = "recipe",
    name = "evaporate-nitrogen",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50}
    },
    main_product = "nitrogen",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "b"
}:add_unlock("nitrogen-mk02")

RECIPE {
    type = "recipe",
    name = "pregnant-solution-01",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "vanadium-mixture", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    results = {
        {type = "fluid", name = "pregnant-solution", amount = 100}
    },
    main_product = "pregnant-solution"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "vanadium-mixture",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-waste", amount = 100},
        {type = "item", name = "sodium-carbonate", amount = 10}
    },
    results = {
        {type = "fluid", name = "vanadium-mixture", amount = 100}
    },
    main_product = "vanadium-mixture",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "nbti-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-titanium", amount = 100},
        {type = "fluid", name = "niobium-complex", amount = 40},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 15}
    },
    main_product= "nbti-alloy",
    icon = "__pyfusionenergygraphics__/graphics/icons/nbti-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys")

--pyfusion mk02 unlocks

--RECIPE('xyhiphoe-pool-mk02'):add_unlock('machines-mk03')
RECIPE('vacuum-pump-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('agitator-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE('thickener-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('hydrocyclone-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('mixer-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('automated-screener-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('secondary-crusher-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('plankton-farm-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('centrifugal-pan-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('jig-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('grease-table-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('compressor-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
--RECIPE('genlab-mk02'):add_unlock('machines-mk03')
--RECIPE('kmauts-enclosure-mk02'):add_unlock('machines-mk03')
RECIPE('gas-separator-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "glass", amount = 50}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('nmf-mk02'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "glass", amount = 50}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})

--pyfusion mk03 unlocks

--RECIPE('xyhiphoe-pool-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE('vacuum-pump-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "sc-unit", amount = 4})
RECIPE('agitator-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE('thickener-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE('hydrocyclone-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE('mixer-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('automated-screener-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('secondary-crusher-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE('centrifugal-pan-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE('plankton-farm-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE('jig-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE('grease-table-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 25})
RECIPE('compressor-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
--RECIPE('genlab-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
--RECIPE('kmauts-enclosure-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 25})
RECIPE('gas-separator-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE('nmf-mk03'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})

--pyfusion mk04 unlocks

--RECIPE('xyhiphoe-pool-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('vacuum-pump-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('agitator-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('thickener-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('hydrocyclone-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('mixer-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('automated-screener-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('secondary-crusher-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('plankton-farm-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('centrifugal-pan-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('jig-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('grease-table-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('compressor-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
--RECIPE('genlab-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
--RECIPE('kmauts-enclosure-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('gas-separator-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('nmf-mk04'):add_unlock('machines-mk05'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE {
    type = "recipe",
    name = "agzn-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "molten-silver", amount = 100},
        {type = "fluid", name = "molten-zinc", amount = 100},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "agzn-alloy", amount = 10}
    },

}:add_unlock("fusion-mk03") --TODO: alloys-mk02

RECIPE {
    type = "recipe",
    name = "casting-lead-container",
    category = "casting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-lead", amount = 50},
        {type = "fluid", name = "molten-steel", amount = 50},
        {type = "fluid", name = "niobium-complex", amount = 50},
        {type = "item", name = "sand-casting", amount = 5},
        {type = "item", name = "aramid", amount = 2},
    },
    results = {
        {type = "item", name = "lead-container", amount = 3}
    },
    main_product = 'lead-container',
    subgroup = "py-rawores-casting",
    order = "ec"
}:add_unlock("machines-mk04")

RECIPE("cool-air"):replace_ingredient("pressured-air", {type = "fluid", name = "liquid-nitrogen", amount = 45}):add_result({type = "fluid", name = "nitrogen", amount = 450})
