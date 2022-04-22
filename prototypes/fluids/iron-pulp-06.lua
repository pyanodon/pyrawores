RECIPE {
    type = "recipe",
    name = "iron-pulp-06",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "iron-pulp-05", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    results = {
        {type = "fluid", name = "iron-pulp-06", amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
        {type = "fluid", name = "iron-pulp-02", amount = 50}
    },
    main_product = "iron-pulp-06",
    subgroup = "py-rawores-iron",
    order = "q-2"
}:add_unlock("iron-mk03")

FLUID {
    type = "fluid",
    name = "iron-pulp-06",
    icon = "__pyraworesgraphics__/graphics/icons/iron-pulp-06.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 0.086, g = 0.180, b = 0.254},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-iron",
    order = "c"
}
