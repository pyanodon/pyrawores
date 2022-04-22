RECIPE {
    type = "recipe",
    name = "u-83",
    category = "chemistry", --agitator
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-81", amount = 100},
        {type = "fluid", name = "nitrogen", amount = 100}, --pyht ammonia
    },
    results = {
        {type = "fluid", name = "u-83", amount = 100},
    },
    main_product = "u-83",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk04")


FLUID {
    type = "fluid",
    name = "u-83",
    icon = "__pyraworesgraphics__/graphics/icons/u-83.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-uranium",
    order = "c"
}
