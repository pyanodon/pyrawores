FLUID {
    type = "fluid",
    name = "molten-lead",
    icon = "__pyraworesgraphics__/graphics/icons/molten-lead.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.2, g = 0.2, b = 0.2},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-lead",
    order = "c"
}
