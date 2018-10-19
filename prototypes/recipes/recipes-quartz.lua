RECIPE {
    type = "recipe",
    name = "crushing-quartz",
    category = "crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "crushed-quartz", amount = 5},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "crushed-quartz",
    icon = "__pyrawores__/graphics/icons/crush-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-1"
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "powdered-quartz",
    category = "ball-mill",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-quartz", amount = 5},
        {type = "item", name = "gravel", amount = 1, probability = 0.5}
    },
    main_product = "powdered-quartz",
    icon = "__pyrawores__/graphics/icons/powdered-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "sand-classification2",
    category = "classifier",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sand", amount = 20}
    },
    results = {
        {type = "item", name = "iron-oxide", amount = 2},
        {type = "item", name = "gravel", amount = 4},
        {type = "item", name = "crushed-quartz", amount = 2}
    },
    main_product = "gravel",
    icon = "__pyrawores__/graphics/icons/class-sand.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a"
}:add_unlock("quartz-mk02")

RECIPE {
    type = "recipe",
    name = "glass-1",
    category = "smelting",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "ore-quartz", amount = 1}
    },
    results = {
        {type = "item", name = "glass", amount = 1}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "glass-2",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 1},
        {type = "fluid", name = "coal-gas", amount = 100},
    },
    results = {
        {type = "item", name = "glass", amount = 2}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "glass-3",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "powdered-quartz", amount = 1},
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "item", name = "sand", amount = 15},
    },
    results = {
        {type = "item", name = "glass", amount = 3}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("quartz-mk01")