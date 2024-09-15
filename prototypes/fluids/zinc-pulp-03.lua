RECIPE {
    type = "recipe",
    name = "zinc-pulp-03",
    category = "flotation",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "zinc-pulp-02", amount = 300},
        {type = "fluid", name = "aerofloat-15", amount = 20},
    },
    results = {
        {type = "fluid", name = "zinc-pulp-03", amount = 300},
        {type = "fluid", name = "zinc-waste", amount = 150},
    },
    main_product = "zinc-pulp-03",
    subgroup = "py-rawores-zinc",
    order = "q-2"
}:add_unlock("zinc-mk03")

FLUID {
    type = "fluid",
    name = "zinc-pulp-03",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-pulp-03.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.6, g = 0.903, b = 0.847},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-zinc",
    order = "c"
}
