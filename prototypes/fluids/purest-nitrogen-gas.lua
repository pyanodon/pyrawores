RECIPE {
    type = "recipe",
    name = "purest-nitrogen-gas",
    category = "distilator", 
    enabled = false,
    energy_required = 4,
    ingredients = {},
    results = {
        {type = "fluid", name = "purest-nitrogen-gas", amount = 50},
        {type = "fluid", name = "oxygen", amount = 20},
    },
    main_product = "purest-nitrogen-gas",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("machines-mk01")

FLUID {
    type = "fluid",
    name = "purest-nitrogen-gas",
    icon = "__pyrawores__/graphics/icons/purest-nitrogen-gas.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.013, g = 0.264, b = 0.9},
    flow_color = {r = 0.013, g = 0.264, b = 0.9},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
