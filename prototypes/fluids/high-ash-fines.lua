FLUID({
    type = "fluid",
    name = "high-ash-fines",
    icon = "__pyraworesgraphics__/graphics/icons/high-ash-fines.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 0.0, g = 0.0, b = 0.0 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-coal",
    order = "c"
})
