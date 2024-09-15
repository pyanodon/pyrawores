RECIPE {
    type = "recipe",
    name = "chromium-rejects",
    category = "casting",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "prepared-chromium", amount = 100},
    },
    results = {
        {type = "fluid", name = "chromium-rejects", amount = 50},
        {type = "item", name = "chromium", amount = 10},
    },
    main_product = "chromium-rejects",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("gold")


FLUID {
    type = "fluid",
    name = "chromium-rejects",
    icon = "__pyraworesgraphics__/graphics/icons/chromium-rejects.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.486, g = 0.552, b = 0.333},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-chromium",
    order = "c"
}
