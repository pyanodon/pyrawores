RECIPE {
    type = "recipe",
    name = "nickel-overflow",
    category = "leaching",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-pulp-02", amount = 100},
        {type = "fluid", name = "glycerol", amount = 30},
    },
    results = {
        {type = "fluid", name = "nickel-overflow", amount = 100},
    },
    main_product = "nickel-overflow",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")

RECIPE {
    type = "recipe",
    name = "nickel-overflow-2",
    category = "chemistry", --ptfe pan
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-slime", amount = 100},
        {type = "fluid", name = "xylenol", amount = 100},
    },
    results = {
        {type = "fluid", name = "nickel-overflow", amount = 50},
    },
    main_product = "nickel-overflow",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")

FLUID {
    type = "fluid",
    name = "nickel-overflow",
    icon = "__pyraworesgraphics__/graphics/icons/nickel-overflow.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.164, g = 0.388, b = 0.192},
    flow_color = {r = 0.164, g = 0.388, b = 0.192},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-nickel",
    order = "c"
}