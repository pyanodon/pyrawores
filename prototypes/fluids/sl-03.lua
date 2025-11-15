RECIPE {
    type = "recipe",
    name = "sl-03",
    category = "thickener", --pyFE thickener
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "sl-02", amount = 100},
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "fluid", name = "sl-03",    amount = 50},
        {type = "fluid", name = "tailings", amount = 100},
    },
    main_product = "sl-03",
    subgroup = "py-rawores-lead",
    order = "q-1"
}:add_unlock("lead-mk03")

FLUID {
    type = "fluid",
    name = "sl-03",
    icon = "__pyraworesgraphics__/graphics/icons/sl-03.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.4, g = 0.4, b = 0.4},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-lead",
    order = "c"
}
