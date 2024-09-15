RECIPE {
    type = "recipe",
    name = "tin-bottom-pulp",
    category = "scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tin-solution", amount = 100},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "sand", amount = 10},
    },
    results = {
        {type = "fluid", name = "tin-bottom-pulp", amount = 100},
        {type = "fluid", name = "tin-middle-pulp", amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "tin-bottom-pulp",
    subgroup = "py-rawores-tin",
    order = "q-2"
}:add_unlock("tin-mk03")


FLUID {
    type = "fluid",
    name = "tin-bottom-pulp",
    icon = "__pyraworesgraphics__/graphics/icons/tin-bottom-pulp.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.258, g = 0.180, b = 0.807},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-tin",
    order = "c"
}
