RECIPE {
    type = "recipe",
    name = "classify-iron-ore-dust",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "iron-ore-dust", amount = 3},
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "fluid", name = "iron-pulp-01", amount = 50},
        {type = "fluid", name = "iron-slime", amount = 50}
    },
    main_product = "iron-pulp-01",
    subgroup = "py-rawores-iron",
    order = "q-2"
}:add_unlock("iron-mk02")


FLUID {
    type = "fluid",
    name = "iron-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/iron-pulp-01.png",
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
