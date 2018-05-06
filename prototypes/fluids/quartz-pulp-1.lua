RECIPE {
    type = "recipe",
    name = "quartz-pulp-1",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "powdered-quartz", amount = 10},
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "quartz-pulp-1", amount = 50},
    },
    main_product = "quartz-pulp-1",
}:add_unlock("quartz-2")


FLUID {
    type = "fluid",
    name = "quartz-pulp-1",
    icon = "__pyrawores__/graphics/icons/quartz-pulp-1.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.647, g = 0.647, b = 0.647},
    flow_color = {r = 0.647, g = 0.647, b = 0.647},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
