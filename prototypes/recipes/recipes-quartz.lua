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
    subgroup = "py-rawores-recipesr",
    order = "i"
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