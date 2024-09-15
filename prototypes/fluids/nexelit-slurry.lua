FLUID {
    type = "fluid",
    name = "nexelit-slurry",
    icon = "__pyraworesgraphics__/graphics/icons/nexelit-slurry.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-nexelit",
    order = "c"
}
