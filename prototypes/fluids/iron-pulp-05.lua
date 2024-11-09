RECIPE {
    type = "recipe",
    name = "iron-pulp-05",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "iron-pulp-04", amount = 100},
        {type = "fluid", name = "water",        amount = 300}
    },
    results = {
        {type = "fluid", name = "iron-pulp-05", amount = 100}
        --pyht phosphoric-acid
    },
    main_product = "iron-pulp-05",
    subgroup = "py-rawores-iron",
    order = "q-2"
}:add_unlock("iron-mk03")

FLUID {
    type = "fluid",
    name = "iron-pulp-05",
    icon = "__pyraworesgraphics__/graphics/icons/iron-pulp-05.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-iron",
    order = "c"
}
