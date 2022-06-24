FLUID {
    type = "fluid",
    name = "coke-oven-gas",
    icon = "__pyraworesgraphics__/graphics/icons/coke-oven-gas.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.960, g = 0.701, b = 0.207},
    flow_color = {r = 0.960, g = 0.701, b = 0.207},
    max_temperature = 1000,
    gas_temperature = 15,
    subgroup = "py-rawores-coke",
    order = "c",
    auto_barrel = false
}
