RECIPE {
    type = "recipe",
    name = "coal-pulp-05",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-pulp-04", amount = 100},
        {type = "fluid", name = "methanol", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "fluid", name = "coal-pulp-05", amount = 100},
        {type = "item", name = "coal", amount = 10},
    },
    main_product = "coal-pulp-05",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk03")


FLUID {
    type = "fluid",
    name = "coal-pulp-05",
    icon = "__pyraworesgraphics__/graphics/icons/coal-pulp-05.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-coal",
    order = "c"
}
