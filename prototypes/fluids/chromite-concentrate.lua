RECIPE {
    type = "recipe",
    name = "chromite-concentrate",
    category = "quenching-tower",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "chromite-fines", amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "chromite-concentrate", amount = 100},
    },
    main_product = "chromite-concentrate",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("gold")


FLUID {
    type = "fluid",
    name = "chromite-concentrate",
    icon = "__pyraworesgraphics__/graphics/icons/chromite-concentrate.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.213, g = 0.656, b = 0.668},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-chromium",
    order = "c"
}
