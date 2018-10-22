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
        {type = "item", name = "powdered-aluminium", amount = 2},
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
