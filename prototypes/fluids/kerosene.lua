RECIPE {
    type = "recipe",
    name = "kerosene",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = "fluid", name = "crude-oil", amount = 250},
        {type = "item", name = "nichrome", amount = 2},
    },
    results = {
        {type = "fluid", name = "kerosene", amount = 100},
        {type = "fluid", name = "diesel", amount = 50},
    },
    main_product = "kerosene",
    icon = "__pyraworesgraphics__/graphics/icons/kerosene.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("fuel-production-mk02")


FLUID {
    type = "fluid",
    name = "kerosene",
    icon = "__pyraworesgraphics__/graphics/icons/kerosene.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.839, g = 0.784, b = 0.137},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
