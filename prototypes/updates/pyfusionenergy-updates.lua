TECHNOLOGY('crusher'):add_prereq('machines-mk01')
TECHNOLOGY('helium-processing'):remove_pack('production-science-pack')

RECIPE('hydrocyclone'):replace_ingredient('centrifuge', 'classifier')
RECIPE('hydrocyclone'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('mixer'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk01')
RECIPE('mixer'):replace_ingredient('iron-plate', 'aluminium-plate')

RECIPE('secondary-crusher'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('automated-screener'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('centrifugal-pan'):remove_unlock('diamond-mining'):add_unlock('machines-mk03')

RECIPE('agitador'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk03')
RECIPE('sodium-chlorate'):remove_unlock('vanadium-processing'):add_unlock('machines-mk02'):change_category('electrolyzer')


RECIPE('purified-quartz'):change_category('pan')
RECIPE('prepared-quartz'):change_category('pan')
RECIPE('quartz-pulp-01'):change_category('hydrocyclone')
RECIPE('al-pulp-01'):change_category('mixer')
RECIPE('sodium-bisulfate'):change_category('mixer')
RECIPE('al-pulp-02'):change_category('agitator')
RECIPE('al-pulp-03'):change_category('agitator')
RECIPE('al-pulp-04'):change_category('agitator')
RECIPE('crystalized-sodium-aluminate'):remove_ingredient('steam'):add_ingredient({type = "fluid", name = "pressured-air", amount = 500})
RECIPE('sodium-aluminate'):replace_result('water','al-tailings')



RECIPE('grade-4-chromite'):change_category('hydrocyclone')
RECIPE('grade-2-chromite-beneficiation'):change_category('screener')

RECIPE("molybdenum-plate"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100}):change_category('electrolyzer')
RECIPE("agitator"):replace_ingredient("iron-plate", "glass")
RECIPE("mixer"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("diamond-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("regolite-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("jig"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("centrifugal-pan"):replace_ingredient("pipe", "niobium-pipe"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("compressor"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("genlab"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("nmf"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "glass", amount = 200})
RECIPE("molybdenum-concentrate"):replace_ingredient("water", "nitrogen")
RECIPE("phytoplankton"):replace_ingredient("crushed-iron", "grade-2-tin")
RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "ammonia")
RECIPE("vpulp-precip"):replace_ingredient("water", "ammonia")
RECIPE("super-alloy"):replace_ingredient("steel-plate", "nickel-plate")
--RECIPE("cool-air"):replace_ingredient("pressured-air", "liquid-nitrogen")
--RECIPE('calcinate-separation'):add_result({type = "item", name = "ore-quartz", amount = 1, probability = 0.6})
RECIPE("kmauts-ration"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("helium"):add_ingredient({type = "fluid", name = "hydrogen", amount = 10})
RECIPE("nbti-alloy"):replace_ingredient("steel-plate", "titanium-plate"):add_ingredient({type = "fluid", name = "nitrogen", amount = 150})
RECIPE("sc-wire"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("ferrite"):add_ingredient({type = "item", name = "zinc-plate", amount = 10})
RECIPE("sc-unit"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 100})
RECIPE("sc-wire"):add_ingredient({type = "item", name = "glass", amount = 12})
RECIPE("boron-mixture"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("boron"):add_ingredient({type = "fluid", name = "hydrogen-chloride", amount = 500})
RECIPE("boron-carbide"):replace_ingredient("coke", "carbon")
RECIPE("blanket"):add_ingredient({type = "item", name = "nexelit-plate", amount = 10})
RECIPE("blanket"):add_ingredient({type = "item", name = "lead-plate", amount = 40})
RECIPE("blanket"):add_ingredient({type = "item", name = "tungsten-plate", amount = 40})
RECIPE("lead-container"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("science-coating"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("agzn-alloy"):replace_ingredient("iron-plate", "silver-plate"):replace_ingredient("stone", "zinc-plate")
RECIPE("silver-foam"):replace_ingredient("water", "hydrogen-chloride")




RECIPE {
    type = "recipe",
    name = "al-tailings-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-tailings", amount = 300},
    },
    results = {
        {type = "fluid", name = "vanadates", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 75}
    },
    main_product = "vanadates",
    icon = "__pyfusionenergy__/graphics/icons/vanadates.png",
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
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "cold-clean-air", amount = 200},
        {type = "item", name = "active-carbon", amount = 2},
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 150},
        {type = "fluid", name = "carbon-dioxide", amount = 50}
    },
    main_product = "nitrogen",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("machines-mk03")