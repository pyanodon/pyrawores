RECIPE {
    type = "recipe",
    name = "quartz-pulp-02",
    category = "scrubber",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "quartz-pulp-01", amount = 100},
        {type = "fluid", name = "water",          amount = 100},
        {type = "item",  name = "sand",           amount = 10},
    },
    results = {
        {type = "fluid", name = "quartz-pulp-02", amount = 50},
        {type = "item",  name = "iron-oxide",     amount = 1, probability = 0.5},
    },
    main_product = "quartz-pulp-02",
    icon = "__pyraworesgraphics__/graphics/icons/quartz-pulp-02.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "q-1"
}:add_unlock("quartz-mk03")


FLUID {
    type = "fluid",
    name = "quartz-pulp-02",
    icon = "__pyraworesgraphics__/graphics/icons/quartz-pulp-02.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.647, g = 0.647, b = 0.647},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-quartz",
    order = "c"
}
