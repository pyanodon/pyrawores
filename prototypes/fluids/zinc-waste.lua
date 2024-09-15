FLUID {
    type = "fluid",
    name = "zinc-waste",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-waste.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.6, g = 0.904, b = 0.847},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-zinc",
    order = "c"
}
