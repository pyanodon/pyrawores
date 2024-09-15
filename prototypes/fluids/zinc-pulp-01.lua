RECIPE {
    type = "recipe",
    name = "zinc-pulp-01",
    category = "flotation",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "zinc-overflow", amount = 400},
        {type = "fluid", name = "cresylic-acid", amount = 30},
    },
    results = {
        {type = "fluid", name = "zinc-pulp-01", amount = 400},
        {type = "fluid", name = "zinc-waste", amount = 200},
    },
    main_product = "zinc-pulp-01",
    subgroup = "py-rawores-zinc",
    order = "q-2"
}:add_unlock("zinc-mk03")

FLUID {
    type = "fluid",
    name = "zinc-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-pulp-01.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.6, g = 0.901, b = 0.847},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-zinc",
    order = "c"
}
