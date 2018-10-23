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
        {type = "item", name = "starch", amount = 10},
        {type = "item", name = "organics", amount = 5},
    },
    main_product= "starch",
    icon = "__pyrawores__/graphics/icons/starch.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")