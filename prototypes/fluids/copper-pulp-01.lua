RECIPE {
    type = "recipe",
    name = "copper-pulp-01",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "copper-solution", amount = 10},
        {type = "fluid", name = "acid-solvent", amount = 10},
    },
    results = {
        {type = "fluid", name = "copper-pulp-01", amount = 100},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
        {type = "fluid", name = "copper-pregnant-solution", amount = 20},
    },
    main_product = "copper-pulp-01",
    subgroup = "py-rawores-copper",
    order = "q-2"
}:add_unlock("copper-mk03")


FLUID {
    type = "fluid",
    name = "copper-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/copper-pulp-01.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 1, g = 0.656, b = 0.1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-copper",
    order = "c"
}
