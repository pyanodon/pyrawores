RECIPE {
    type = "recipe",
    name = "chromite-pulp-06",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "chromite-pulp-04", amount = 100},
        {type = "fluid", name = "tar", amount = 100},
    },
    results = {
        {type = "fluid", name = "chromite-pulp-06", amount = 100},
        {type = "fluid", name = "chromite-solution", amount = 50},
    },
    main_product = "chromite-pulp-06",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("chromium-mk03")


FLUID {
    type = "fluid",
    name = "chromite-pulp-06",
    icon = "__pyraworesgraphics__/graphics/icons/chromite-pulp-06.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.862, g = 0.294, b = 0.031},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-chromium",
    order = "c"
}
