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