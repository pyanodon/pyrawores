RECIPE {
    type = "recipe",
    name = "alamac",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 100},
        {type = "fluid", name = "aromatics", amount = 250},
    },
    results = {
        {type = "fluid", name = "alamac", amount = 100},
    },
    --main_product = "powdered-aluminium",
    icon = "__pyraworesgraphics__/graphics/icons/alamac.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("additives")


FLUID {
    type = "fluid",
    name = "alamac",
    icon = "__pyraworesgraphics__/graphics/icons/alamac.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.341, g = 0.635, b = 0.498},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
