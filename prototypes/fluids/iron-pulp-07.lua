RECIPE {
    type = "recipe",
    name = "iron-pulp-07",
    category = "flotation",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "iron-dust-concentrate", amount = 3},
        {type = "fluid", name = "armac-12", amount = 100},
    },
    results = {
        {type = "fluid", name = "iron-pulp-07", amount = 100},
    },
    main_product = "iron-pulp-07",
    subgroup = "py-rawores-iron",
    order = "q-2"
}:add_unlock("iron-mk03")


FLUID {
    type = "fluid",
    name = "iron-pulp-07",
    icon = "__pyraworesgraphics__/graphics/icons/iron-pulp-07.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-iron",
    order = "c"
}
