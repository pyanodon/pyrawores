RECIPE {
    type = 'recipe',
    name = 'test',
    category = 'scrubber',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'coal', amount = 10},
    },
    results = {
        {type = 'item', name = 'iron-plate', amount = 3}
    },
    main_product = 'iron-plate'
}:add_unlock("machines-mk01")

RECIPE {
    type = "recipe",
    name = "sand-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sand", amount = 20}
    },
    results = {
        {type = "item", name = "crushed-quartz", amount = 5},
        {type = "item", name = "chromite-sand", amount = 3}
    },
    main_product = "crushed-quartz",
    icon = "__pyrawores__/graphics/icons/sand-separation.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a"
}:add_unlock("quartz-1")

RECIPE {
    type = "recipe",
    name = "powdered-quartz",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-quartz", amount = 10},
    },
    main_product = "powdered-quartz"
}:add_unlock("coal-processing-2")