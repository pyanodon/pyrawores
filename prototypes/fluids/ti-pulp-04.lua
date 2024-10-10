RECIPE {
    type = "recipe",
    name = "ti-pulp-04",
    category = "chemistry", --pyfe thickener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "ti-overflow-waste", amount = 100},
        {type = "fluid", name = "water",             amount = 100},
    },
    results = {
        {type = "fluid", name = "ti-pulp-04",        amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "ti-pulp-04",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03")


FLUID {
    type = "fluid",
    name = "ti-pulp-04",
    icon = "__pyraworesgraphics__/graphics/icons/ti-pulp-04.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.713, g = 0.643, b = 0.733},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-titanium",
    order = "c"
}
