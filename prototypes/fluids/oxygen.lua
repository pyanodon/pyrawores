FLUID {
    type = "fluid",
    name = "oxygen",
    icon = "__pyraworesgraphics__/graphics/icons/oxygen.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.701, g = 0.160, b = 0.180},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
