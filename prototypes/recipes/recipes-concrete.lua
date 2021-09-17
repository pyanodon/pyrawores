RECIPE {
    type = "recipe",
    name = "concrete",
    category = "crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "crushed-quartz", amount = 1},
    },
    main_product = "crushed-quartz",
    icon = "__pyraworesgraphics__/graphics/icons/crush-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-concrete",
}:add_unlock("concrete")
