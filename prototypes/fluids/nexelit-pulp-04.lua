RECIPE {
    type = "recipe",
    name = "nexelit-pulp-04",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "nexelit-pulp-03", amount = 100},
        {type = "fluid", name = "armac-12", amount = 75},
--ptfe pressured air
    },
    results = {
        {type = "fluid", name = "nexelit-pulp-04", amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "nexelit-pulp-04",
    subgroup = "py-rawores-nexelit",
    order = "q-2"
}:add_unlock("nexelit-mk03")


FLUID {
    type = "fluid",
    name = "nexelit-pulp-04",
    icon = "__pyraworesgraphics__/graphics/icons/nexelit-pulp-04.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 0, g = 0.545, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-nexelit",
    order = "c"
}
