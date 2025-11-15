RECIPE {
    type = "recipe",
    name = "purest-nitrogen-gas",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {},
    results = {
        {type = "fluid", name = "purest-nitrogen-gas", amount = 60},
        {type = "fluid", name = "nitrogen",            amount = 20},
        {type = "fluid", name = "oxygen",              amount = 20},
        {type = "fluid", name = "pressured-air",       amount = 100},
    },
    main_product = "purest-nitrogen-gas",
    subgroup = "py-rawores-fluids",
    order = "dab"
}:add_unlock("nitrogen-mk01")

FLUID {
    type = "fluid",
    name = "purest-nitrogen-gas",
    icon = "__pyraworesgraphics__/graphics/icons/purest-nitrogen-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.013, g = 0.264, b = 0.9},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
