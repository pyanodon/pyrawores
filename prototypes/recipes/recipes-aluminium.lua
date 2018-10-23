RECIPE {
    type = "recipe",
    name = "powdered-aluminium",
    category = "ball-mill",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-aluminium", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-aluminium", amount = 1},
        {type = "item", name = "gravel", amount = 1, probability = 0.5}
    },
    main_product = "powdered-aluminium",
    icon = "__pyrawores__/graphics/icons/powdered-aluminium.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk01")

RECIPE {
    type = "recipe",
    name = "sodium-aluminate",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-pulp-04", amount = 300},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "sodium-chlorate", amount = 10},
        {type = "item", name = "starch", amount = 5},
    },
    results = {
        {type = "item", name = "sodium-aluminate", amount = 1},
        {type = "fluid", name = "al-tailings", amount = 50}
    },
    main_product = "sodium-aluminate",
    icon = "__pyrawores__/graphics/icons/sodium-aluminate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk02")

RECIPE {
    type = "recipe",
    name = "crystalized-sodium-aluminate",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-aluminate", amount = 1},
        {type = "fluid", name = "steam", amount = 500, temperature = 165}, --pyfe pressured air
    },
    results = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},
    },
    --main_product = "crystalized-sodium-aluminate",
    icon = "__pyrawores__/graphics/icons/crystalized-sodium-aluminate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk03")

RECIPE {
    type = "recipe",
    name = "high-grade-alumina",
    category = "hpf",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},
    },
    results = {
        {type = "item", name = "high-grade-alumina", amount = 1},
        {type = "fluid", name = "water", amount = 50},
    },
    --main_product = "crystalized-sodium-aluminate",
    icon = "__pyrawores__/graphics/icons/high-grade-alumina.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk04")

----PLATES----

RECIPE {
    type = "recipe",
    name = "aluminium-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ore-aluminium", amount = 6}
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 1}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/aluminium-plate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "aluminium-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "powdered-aluminium", amount = 1}
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 2}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/aluminium-plate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk01")

RECIPE {
    type = "recipe",
    name = "aluminium-plate-3",
    category = "smelting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-aluminate", amount = 1}
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 5}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/aluminium-plate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk02")

RECIPE {
    type = "recipe",
    name = "aluminium-plate-4",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "fuelrod-mk01", amount = 1},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 10}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/aluminium-plate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk03")

RECIPE {
    type = "recipe",
    name = "aluminium-plate-5",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-alumina", amount = 1},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "fluid", name = "heavy-oil", amount = 100},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 20}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/aluminium-plate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk04")