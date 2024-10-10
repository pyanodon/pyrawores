RECIPE {
    type = "recipe",
    name = "al-pulp-04",
    category = "chemistry", --pyfe agitator
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-pulp-03", amount = 100},
        {type = "fluid", name = "water",      amount = 150},
    },
    results = {
        {type = "fluid", name = "al-pulp-04",        amount = 50},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "al-pulp-04",
    icon = "__pyraworesgraphics__/graphics/icons/al-pulp-04.png",
    icon_size = 32,
    subgroup = "py-rawores-aluminium",
    order = "f"
}:add_unlock("aluminium-mk03")


FLUID {
    type = "fluid",
    name = "al-pulp-04",
    icon = "__pyraworesgraphics__/graphics/icons/al-pulp-04.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.827, g = 0.568, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-aluminium",
    order = "f"
}
