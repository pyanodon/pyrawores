RECIPE {
    type = "recipe",
    name = "powdered-ralesia-seeds",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ralesia-seeds", amount = 15}
    },
    results = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1}
    },
    main_product= "powdered-ralesia-seeds",
    icon = "__pyraworesgraphics__/graphics/icons/powdered-ralesia-seeds.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("starch")

RECIPE {
    type = "recipe",
    name = "starch",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1}
    },
    results = {
        {type = "item", name = "starch", amount = 3},
        {type = "item", name = "organics", amount = 5},
    },
    main_product= "starch",
    icon = "__pyraworesgraphics__/graphics/icons/starch.png",
    icon_size = 64,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("starch")

RECIPE {
    type = "recipe",
    name = "starch-2",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 1},
    },
    results = {
        {type = "item", name = "starch", amount = 10},
        {type = "item", name = "organics", amount = 5},
    },
    main_product= "starch",
    icon = "__pyraworesgraphics__/graphics/icons/starch.png",
    icon_size = 64,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("starch")

RECIPE {
    type = "recipe",
    name = "water-saline",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "salt", amount = 10},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 100},
    },
    --main_product= "starch",
    icon = "__pycoalprocessinggraphics__/graphics/icons/water-saline.png",
    icon_size = 64,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("electrolysis")

RECIPE {
    type = "recipe",
    name = "py-sodium-hydroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 50},
        {type = "item", name = "salt", amount = 10}
    },
    results = {
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "limestone", amount = 5}
    },
    icon = "__pyraworesgraphics__/graphics/icons/sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a8"
}:add_unlock("salts")

RECIPE {
    type = "recipe",
    name = "salt-ex",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water-saline", amount = 230}
    },
    results = {
        {type = "item", name = "salt", amount = 23}
    },
    main_product = "salt",
    subgroup = "py-items",
    order = "salt",
    icon = "__pyraworesgraphics__/graphics/icons/salt.png",
    icon_size = 32
}:add_unlock("fluid-separation")

RECIPE {
    type = "recipe",
    name = "syngas2",
    category = "gasifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-gas", amount = 50},
        {type = "fluid", name = "oxygen", amount = 60},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "ash", amount = 1}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/syngas.png",
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
    icon = "__pycoalprocessinggraphics__/graphics/icons/syngas-distilation.png",
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
        {type = "fluid", name = "combustion-mixture1", amount = 75, temperature = 520},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-hydrogen.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-1")

RECIPE {
    type = "recipe",
    name = "bonemeal-salt",
    category = "ulric",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "ralesia", amount = 10},
        {type = "item", name = "salt", amount = 10},
    },
    results = {
        {type = "item", name = "bonemeal", amount = 10}
    },
    main_product = "bonemeal",
    icon = "__pycoalprocessinggraphics__/graphics/icons/bonemeal.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "g"
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-fat-salt',
    category = 'mukmoux',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 30},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'ash', amount = 10}
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 30}
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'p2s5',
    category = 'hpf',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'stone', amount = 15},
        {type = 'item', name = 'pyrite', amount = 5},
    },
    results = {
        {type = 'item', name = 'p2s5', amount = 1},
        {type = 'item', name = 'iron-ore', amount = 1},
    },
    main_product = "p2s5",
}:add_unlock("additives")

RECIPE {
    type = 'recipe',
    name = 'p2s5-2',
    category = 'hpf',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'stone', amount = 15},
        {type = 'item', name = 'sulfur', amount = 5},
    },
    results = {
        {type = 'item', name = 'p2s5', amount = 1},
        {type = 'item', name = 'pyrite', amount = 2},
    },
    main_product = "p2s5",
}:add_unlock("additives")

RECIPE {
    type = "recipe",
    name = "ammonium-chloride",
    category = "rectisol", --pyht fbreactor
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 200},
        {type = "fluid", name = "water", amount = 100}, --pyht ammonia
        {type = "fluid", name = "nitrogen", amount = 200},
        {type = "item", name = "salt", amount = 20},
    },
    results = {
        {type = "item", name = "ammonium-chloride", amount = 2},
        {type = "item", name = "sodium-carbonate", amount = 1},
    },
    main_product = "ammonium-chloride",
    icon = "__pyraworesgraphics__/graphics/icons/ammonium-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-items",
    order = "q-2"
}:add_unlock("salts")

RECIPE {
    type = "recipe",
    name = "duralumin-1",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "aluminium-plate", amount = 4},
        {type = "item", name = "copper-plate", amount = 2},
    },
    results = {
        {type = "item", name = "duralumin", amount = 1}
    },
    main_product= "duralumin",
    icon = "__pyraworesgraphics__/graphics/icons/duralumin.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys-mk01")

RECIPE {
    type = "recipe",
    name = "duralumin-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-aluminium", amount = 100},
        {type = "fluid", name = "molten-copper", amount = 100},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "duralumin", amount = 20}
    },
    main_product= "duralumin",
    icon = "__pyraworesgraphics__/graphics/icons/duralumin.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys-mk02")

RECIPE {
    type = "recipe",
    name = "battery-1",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 6},
        {type = "item", name = "glass", amount = 2}, --pyht glass-fiber
        {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "item", name = "battery", amount = 3}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("battery")

RECIPE {
    type = "recipe",
    name = "battery-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 4},
        {type = "item", name = "coke", amount = 5},
        {type = "item", name = "pyrite", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "item", name = "battery", amount = 4}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("battery")

RECIPE {
    type = "recipe",
    name = "mega-drill-head",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "super-steel", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "fluid", name = "nitrogen", amount = 50}, --pyfe helium
        --pyfe diamond
        --pyfe super-alloy
        --pyfe boron-carbide
    },
    results = {
        {type = "item", name = "mega-drill-head", amount = 3}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("drill-head-mk03")

RECIPE {
    type = "recipe",
    name = "tinned-cable",
    category = "crafting",
    enabled = true,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "copper-cable", amount = 2},
        {type = "item", name = "tin-plate", amount = 1},
    },
    results = {
        {type = "item", name = "tinned-cable", amount = 1}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "aramid",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tpa", amount = 50},
        {type = "item", name = "titanium-plate", amount = 15},
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "aramid", amount = 8}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aramid")

RECIPE {
    type = 'recipe',
    name = 'pyrite-burn',
    category = 'hpf',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'pyrite', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'acidgas', amount = 50},
        {type = 'item', name = 'iron-oxide', amount = 12},
    },
    main_product = "iron-oxide",
}:add_unlock("pyrite")

RECIPE {
    type = 'recipe',
    name = 'pyrite-make',
    category = 'hpf',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'iron-oxide', amount = 3},
        {type = 'item', name = 'sulfur', amount = 3},
    },
    results = {
        {type = 'item', name = 'pyrite', amount = 1},
    },
    main_product = "pyrite",
}:add_unlock("pyrite")

RECIPE {
    type = 'recipe',
    name = 'sulfuric-acid-01',
    category = 'chemistry',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'acidgas', amount = 100},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'sulfuric-acid', amount = 50},
    },
    subgroup = 'py-rawores-fluids',
    order = 'b1',
}:add_unlock("sulfur-processing")

RECIPE {
    type = 'recipe',
    name = 'sodium-carbonate-1',
    category = 'hpf',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'sodium-sulfate', amount = 1},
        {type = 'item', name = 'coke', amount = 5},
        {type = 'item', name = 'limestone', amount = 3},
    },
    results = {
        {type = 'item', name = 'sodium-carbonate', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 50},
    },
    main_product = "sodium-carbonate",
}:add_unlock("salts")

RECIPE {
    type = 'recipe',
    name = 'sodium-sulfate-1',
    category = 'chemistry',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'sodium-hydroxide', amount = 10},
        {type = 'fluid', name = 'sulfuric-acid', amount = 50},
    },
    results = {
        {type = 'item', name = 'sodium-sulfate', amount = 1},
        {type = 'fluid', name = 'water', amount = 50},
    },
    main_product = "sodium-sulfate",
}:add_unlock("salts")

RECIPE {
    type = 'recipe',
    name = 'ammo-initial',
    category = 'handcrafting',
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'iron-plate', amount = 1},
        {type = 'item', name = 'raw-coal', amount = 2},
        {type = 'item', name = 'stone', amount = 2},
    },
    results = {
        {type = 'item', name = 'firearm-magazine', amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "nichrome-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-nickel", amount = 100},
        {type = "fluid", name = "molten-chromium", amount = 80},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "nichrome", amount = 10}
    },
    main_product= "nichrome",
    icon = "__pycoalprocessinggraphics__/graphics/icons/nichrome.png",
    icon_size = 64,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys-mk03")

RECIPE {
    type = "recipe",
    name = "syngas-from-hydrogen-1",
    category = "olefin",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "nickel-plate", amount = 1},
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 400}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 250},
        {type = "fluid", name = "oxygen", amount = 100},
    },
    main_product= "syngas",
}:add_unlock("fuel-production-mk02")

RECIPE {
    type = "recipe",
    name = "dedicated-syngas-from-hydrogen-1",
    category = "olefin",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 1},
        {type = "fluid", name = "hydrogen", amount = 300},
        {type = "fluid", name = "carbon-dioxide", amount = 400}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 250},
    },
}:add_unlock("fuel-production-mk02")

RECIPE {
    type = "recipe",
    name = "rail-2",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "treated-wood", amount = 2},
        {type = "item", name = "solder", amount = 2},
        {type = "item", name = "steel-plate", amount = 2},
        {type = "item", name = "stone-brick", amount = 4},
    },
    results = {
        {type = "item", name = "rail", amount = 8},
    },
}:add_unlock("railway-mk02")

RECIPE {
    type = "recipe",
    name = "methanol-from-hydrogen",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 90},
        {type = "fluid", name = "hydrogen", amount = 150},
        {type = "item", name = "nichrome", amount = 1}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 120}
    },
    subgroup = "py-methanol",
    icon = "__pycoalprocessinggraphics__/graphics/icons/methanol.png",
    icon_size = 32,
    order = "b"
}:add_unlock("methanol-processing-2")

RECIPE {
    type = "recipe",
    name = "kerosene-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "kerosene", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-kerosene.png",
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
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk02.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("uranium-mk01")

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
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 850},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk03.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("uranium-mk02")

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
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 900},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk04.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("uranium-mk03")

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
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 950},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk05.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "glycerol-hydrogen",
    category = "electrolyzer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "glycerol", amount = 20},
        {type = "fluid", name = "water", amount = 50} --pyfe-liquid-nitrogen
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 300}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/glycerol-hydrogen.png",
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
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-aluminium.png",
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
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-chromium.png",
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
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "copper-ore", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-copper.png",
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
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-iron.png",
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
        {type = "item", name = "ore-lead", amount = 20}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-lead.png",
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
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-nickel.png",
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
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-quartz", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-quartz.png",
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
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-tin", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-tin.png",
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
    icon = "__pyraworesgraphics__/graphics/icons/drilling-titanium.png",
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
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-zinc.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "extract-limestone-01",
    category = "soil-extraction",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "limestone", amount = 2}
    },
    subgroup = "py-extraction",
    order = "d"
}

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-1",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 5},
        {type = "item", name = "20-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 1}
    }
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-2",
    category = "hpf",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 2},
        {type = "item", name = "40-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 4}
    }
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-3",
    category = "hpf",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 2},
        {type = "item", name = "70-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 8}
    }
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "nbfe-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 100},
        {type = "fluid", name = "niobium-complex", amount = 40},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "nbfe-alloy", amount = 15}
    },
    main_product= "nbfe-alloy",
    icon = "__pycoalprocessinggraphics__/graphics/icons/nbfe-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys-mk03")

RECIPE {
    type = "recipe",
    name = "drill-head-2",
    category = "crafting",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "chromium", amount = 3},
        {type = "item", name = "aluminium-plate", amount = 6}
    },
    results = {
        {type = "item", name = "drill-head", amount = 4}
    }
}:add_unlock("drill-head-mk01")

RECIPE {
    type = "recipe",
    name = "drill-head-3",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "aluminium-plate", amount = 6}
    },
    results = {
        {type = "item", name = "drill-head", amount = 6}
    }
}:add_unlock("drill-head-mk01")

RECIPE {
    type = "recipe",
    name = "drill-head-4",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 4},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "duralumin", amount = 5},
    },
    results = {
        {type = "item", name = "drill-head", amount = 8}
    }
}:add_unlock("drill-head-mk02")

RECIPE {
    type = "recipe",
    name = "drill-head-5",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 4},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "niobium-plate", amount = 3},
    },
    results = {
        {type = "item", name = "drill-head", amount = 10}
    }
}:add_unlock("drill-head-mk02")

RECIPE {
    type = "recipe",
    name = "diesel",
    category = "olefin",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 2},
        {type = "fluid", name = "methanol", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 200}
    },
    results = {
        {type = "fluid", name = "diesel", amount = 150},
        {type = "fluid", name = "olefin", amount = 100}
    },
    main_product = "diesel",
    icon = "__pycoalprocessinggraphics__/graphics/icons/diesel.png",
    icon_size = 32,
    subgroup = "py-fluids",
    order = "d1"
}:add_unlock("fuel-production-mk02")

RECIPE {
    type = "recipe",
    name = "diesel2",
    category = "olefin",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 2},
        {type = "fluid", name = "olefin", amount = 200}
    },
    results = {
        {type = "fluid", name = "diesel", amount = 200}
    },
    main_product = "diesel",
    icon = "__pycoalprocessinggraphics__/graphics/icons/diesel.png",
    icon_size = 32,
    subgroup = "py-fluids",
    order = "d2"
}:add_unlock("fuel-production-mk02")

RECIPE {
    type = "recipe",
    name = "diesel-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "diesel", amount = 100},
        {type = "fluid", name = "water", amount = 1000},
        {type = "item", name = "fuelrod-mk01", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 2400},
        {type = "fluid", name = "steam", amount = 1000, temperature = 150, catalyst_amount = 1000}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-diesel.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "i"
}:add_unlock("energy-3")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {"lead-plate", 2},
        {"niobium-plate", 2},
        {"fuelrod-mk01", 2}
    },
    results = {
        {"uranium-fuel-cell", 1}
    },
}:add_unlock('uranium-mk01')

RECIPE {
    type = "recipe",
    name = "bricks-to-stone",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {"stone-brick", 4},
    },
    results = {
        {"stone", 8},
    },
}:add_unlock('crusher')