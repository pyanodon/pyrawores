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
    icon = "__pyrawores__/graphics/icons/powdered-ralesia-seeds.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

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
    icon = "__pyrawores__/graphics/icons/starch.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

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
    icon = "__pyrawores__/graphics/icons/starch.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "water-saline",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "salt", amount = 15},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 100},
    },
    --main_product= "starch",
    icon = "__pycoalprocessing__/graphics/icons/water-saline.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "py-sodium-hydroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 50},
        {type = "item", name = "salt", amount = 10}
    },
    results = {
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "limestone", amount = 5}
    },
    icon = "__pyrawores__/graphics/icons/sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a8"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "salt-ex",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water-saline", amount = 100}
    },
    results = {
        {type = "item", name = "salt", amount = 1, probability = 0.5}
    },
    main_product = "salt",
    subgroup = "py-items",
    order = "salt",
    icon = "__pyrawores__/graphics/icons/salt.png",
    icon_size = 32
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "methanol-from-hydrogen",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 30},
        {type = "fluid", name = "hydrogen", amount = 50},
        --{type = "item", name = "zinc-plate", amount = 1},
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
    icon = "__pycoalprocessing__/graphics/icons/bonemeal.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "g"
}:add_unlock("machines-mk02")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-fat-salt',
    category = 'mukmoux',
    enabled = 'false',
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 30},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'ash', amount = 10}
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 30}
    }
}:add_unlock("machines-mk02")