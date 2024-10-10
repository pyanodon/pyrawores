RECIPE {
    type = "recipe",
    name = "u-rich-pulp",
    category = "chemistry", --agitator
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-pulp-03",     amount = 100},
        {type = "item",  name = "iron-ore-dust", amount = 3},
        {type = "fluid", name = "steam",         amount = 200},
    },
    results = {
        {type = "fluid", name = "u-rich-pulp", amount = 100},
    },
    main_product = "u-rich-pulp",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk02")


FLUID {
    type = "fluid",
    name = "u-rich-pulp",
    icon = "__pyraworesgraphics__/graphics/icons/u-rich-pulp.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-uranium",
    order = "c"
}
