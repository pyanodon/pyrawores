RECIPE('making-chromium'):remove_unlock('coal-processing-2')
RECIPE('crushing-iron'):remove_unlock('crusher')
RECIPE('crushing-copper'):remove_unlock('crusher')
RECIPE('evaporator'):remove_unlock('coal-processing-2'):add_unlock('machines-mk01'):remove_ingredient('chemical-plant')
TECHNOLOGY('engine'):remove_pack('science-pack-2')
TECHNOLOGY('crusher'):remove_pack('science-pack-2'):remove_prereq('coal-processing-2'):add_prereq('machines-mk01')

RECIPE("boric-acid"):change_category('electrolyzer')
RECIPE("copper-coating"):change_category('electrolyzer')

RECIPE("empty-gas-canister"):replace_ingredient("steel-plate", "aluminium-plate")
RECIPE("methanol-from-syngas"):replace_ingredient("iron-plate", "zinc-plate")
RECIPE("flying-robot-frame"):replace_ingredient("steel-plate", "niobium-plate")
RECIPE("ralesia"):replace_ingredient("water", "hydrogen")
RECIPE("equipment-chassi"):replace_ingredient("copper-plate", "tin-plate")
RECIPE("lens"):replace_ingredient("stone", "glass")
RECIPE("diborane"):replace_ingredient("water", "hydrogen"):change_category('electrolyzer')
RECIPE("oleochemicals-distilation"):replace_ingredient("water", "oxygen")
RECIPE("oleo-gasification"):replace_ingredient("water", "oxygen")
RECIPE("ppd"):replace_ingredient("water", "hydrogen"):change_category('electrolyzer'):add_ingredient({type = 'fluid', name = 'chlorine', amount = 100})
RECIPE("aromatics2"):replace_ingredient("water", "hydrogen")
RECIPE("niobium-complex"):replace_ingredient("water", "hydrogen-chloride")
RECIPE("tpa"):replace_ingredient("copper-ore", "nichrome")
RECIPE("science-pack-3"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("tailings-classification"):replace_ingredient("copper-ore", "lead-ore") --result
RECIPE("tailings-classification"):replace_ingredient("iron-ore", "tin-ore") --result
RECIPE("niobium-plate"):replace_ingredient("coal", "salt"):change_category('electrolyzer')
RECIPE("sulfur-crudeoil"):replace_ingredient("iron-ore", "salt")
RECIPE("glass-core"):replace_ingredient("sand", "glass")
RECIPE("glass-core"):replace_ingredient("steel-plate", "silver-plate")
RECIPE("nichrome"):replace_ingredient("water", "nitrogen")
RECIPE("nichrome"):replace_ingredient("iron-plate", "nickel-plate")
RECIPE("hydrogen-peroxide"):replace_ingredient("iron-plate", "nickel-plate")
RECIPE("cladding"):replace_ingredient("sand", "glass")
--RECIPE("aromatics-to-rubber"):replace_ingredient("plastic-bar", "rubber")
RECIPE("nas-battery"):replace_ingredient("copper-ore", "sodium-hydroxide")
RECIPE("nas-battery"):add_ingredient({type = "item", name = "lead-plate", amount = 2})

RECIPE("cladded-core"):add_ingredient({type = "item", name = "aramid", amount = 2})

RECIPE("gasoline"):add_ingredient({type = "fluid", name = "hydrogen", amount = 50})
RECIPE("olefin"):replace_ingredient("water", "hydrogen")
RECIPE("flask"):replace_ingredient("iron-plate", "glass")
RECIPE("ref-to-light-oil"):add_ingredient({type = "fluid", name = "hydrogen", amount = 250})
RECIPE("olefin-combustion"):replace_ingredient("water", "hydrogen")
RECIPE("niobium-oxide"):replace_ingredient("water", "nitrogen")
RECIPE("filtration-media"):add_ingredient({type = "item", name = "glass", amount = 5})
RECIPE("advanced-circuit"):add_ingredient({type = "item", name = "optical-fiber", amount = 2})
RECIPE("active-carbon"):replace_ingredient("water", "nitrogen"):add_ingredient({type = "item", name = "sodium-hydroxide", amount = 7})
RECIPE("zinc-chloride"):replace_ingredient("iron-plate", "zinc-plate"):replace_ingredient("water", "hydrogen-chloride"):remove_ingredient("copper-plate"):add_result({type = "fluid", name = "hydrogen", amount =20})
RECIPE("laser-turret"):add_ingredient({type = "item", name = "lens", amount = 1})
RECIPE("cooling-tower-mk01"):replace_ingredient("iron-plate", "duralumin")
RECIPE("soil-extractormk02"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("soil-extractormk01"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("wpu"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("fawogae-plantation"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("advanced-foundry-mk01"):replace_ingredient("steel-furnace", "stone-furnace")


RECIPE("gasturbinemk02"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("iron-plate", "duralumin")
RECIPE("methanol-reactor"):replace_ingredient("chemical-plant", "electrolyzer-mk01")
RECIPE("power-house"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("jaw-crusher"):remove_ingredient("car"):add_ingredient({type = "item", name = "duralumin", amount = 15})
RECIPE("evaporator"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("cooling-tower-mk02"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("iron-plate", "stainless-steel")
RECIPE("desulfurizator-unit"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("soil-extractormk01"):add_ingredient({type = "item", name = "titanium-plate", amount = 5})
RECIPE("olefin-plant"):replace_ingredient("chemical-plant", "electrolyzer-mk01")
RECIPE("ground-borer"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("fts-reactor"):replace_ingredient("stone-brick", "glass")
RECIPE("advanced-foundry-mk02"):replace_ingredient("iron-plate", "titanium-plate"):add_ingredient({type = "item", name = "glass", amount = 15})
RECIPE("ralesia-plantation"):replace_ingredient("stone", "glass")
RECIPE("botanical-nursery"):add_ingredient({name = "glass", amount = 10})
RECIPE("equipment-chassi"):replace_ingredient("iron-plate", "duralumin")


RECIPE('distilator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('distilator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('distilator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('advanced-foundry-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "engine-unit", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('advanced-foundry-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE('advanced-foundry-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 40})

RECIPE('automated-factory-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('automated-factory-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('automated-factory-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 10})

RECIPE('ball-mill-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('ball-mill-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 50}):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE('ball-mill-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('borax-mine-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('borax-mine-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('borax-mine-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('botanical-nursery-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE('botanical-nursery-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE('botanical-nursery-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 20}):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('carbon-filter-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20})
RECIPE('carbon-filter-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('carbon-filter-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('classifier-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('classifier-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('classifier-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('desulfurizator-unit-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):add_ingredient({type = "item", name = "glass", amount = 10})
RECIPE('desulfurizator-unit-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('desulfurizator-unit-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35})

RECIPE('evaporator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):add_ingredient({type = "item", name = "glass", amount = 10})
RECIPE('evaporator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('evaporator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35})

RECIPE('fluid-separator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('fluid-separator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('fluid-separator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 10}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('fts-reactor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('fts-reactor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('fts-reactor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('gasifier-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('gasifier-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('gasifier-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "tin-plate", amount = 40}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('hpf-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('hpf-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('hpf-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('jaw-crusher-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('jaw-crusher-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 60}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('jaw-crusher-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('methanol-reactor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20})
RECIPE('methanol-reactor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('methanol-reactor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('olefin-plant-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('olefin-plant-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('olefin-plant-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('quenching-tower-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('quenching-tower-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('quenching-tower-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('power-house-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('power-house-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('power-house-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('rectisol-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('rectisol-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('rectisol-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('sand-extractor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('sand-extractor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 60}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('sand-extractor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('soil-extractormk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('soil-extractormk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('soil-extractormk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('solid-separator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('solid-separator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('solid-separator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('tar-processing-unit-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('tar-processing-unit-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('tar-processing-unit-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "tin-plate", amount = 40})

RECIPE('wpu-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10})
RECIPE('wpu-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE('wpu-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 20}):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('washer-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('washer-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('washer-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 10})

RECIPE {
    type = "recipe",
    name = "methanol-from-hydrogen",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 30},
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "item", name = "zinc-plate", amount = 1},
        {type = "item", name = "nichrome", amount = 2}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 40}
    },
    subgroup = "py-methanol",
    icon = "__pycoalprocessing__/graphics/icons/methanol.png",
    icon_size = 32,
    order = "b"
}:add_unlock("methanol-processing-2")

RECIPE {
    type = "recipe",
    name = "syngas2",
    category = "gasifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-gas", amount = 40},
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "ash", amount = 1}
    },
    icon = "__pycoalprocessing__/graphics/icons/syngas.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "a-b-[syn-gas]"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "syngas-distilation",
    category = "distilator",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 150}
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 50}
    },
    main_product = "hydrogen",
    icon = "__pycoalprocessing__/graphics/icons/syngas-distilation.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a [coal-gas]"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "hydrogen-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "coke", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 520},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessing__/graphics/icons/combustion-hydrogen.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-1")

RECIPE {
    type = "recipe",
    name = "kerosene-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "fluid", name = "kerosene", amount = 100}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pyrawores__/graphics/icons/combustion-kerosene.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-3")

RECIPE {
    type = "recipe",
    name = "fuelrodmk02-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk02", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pyrawores__/graphics/icons/combustion-fuelrod-mk02.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk03-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk03", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 850},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pyrawores__/graphics/icons/combustion-fuelrod-mk03.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk04-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk04", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 900},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pyrawores__/graphics/icons/combustion-fuelrod-mk04.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk05-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk05", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 950},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pyrawores__/graphics/icons/combustion-fuelrod-mk05.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "glycerol-hydrogen",
    category = "electrolyzer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "glycerol", amount = 20},
        {type = "fluid", name = "water", amount = 200} --pyfe-liquid-nitrogen
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 300}
    },
    icon = "__pycoalprocessing__/graphics/icons/glycerol-hydrogen.png",
    icon_size = 32,
    subgroup = "py-fluid-handling",
    order = "o"
}:add_unlock("coal-processing-3")

RECIPE {
    type = "recipe",
    name = "mining-aluminium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-aluminium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-chromium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-chromium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-copper",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 150},
        {type = "fluid", name = "coal-gas", amount = 150},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "copper-ore", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-copper.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-iron",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 150},
        {type = "fluid", name = "coal-gas", amount = 150},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-iron.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-lead",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-lead", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-lead.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-nickel",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-nickel.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-quartz",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-quartz", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-quartz.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-tin",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-tin", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-tin.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-titanium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-titanium", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-titanium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-zinc",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 15}
    },
    icon = "__pyrawores__/graphics/icons/drilling-zinc.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")