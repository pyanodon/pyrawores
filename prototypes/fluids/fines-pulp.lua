RECIPE {
    type = "recipe",
    name = "fines-pulp",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "organic-solvent", amount = 50},
        {type = "item", name = "coarse-coal", amount = 3},
    },
    results = {
        {type = "fluid", name = "fines-pulp", amount = 40},
        {type = "fluid", name = "high-ash-fines", amount = 25},
    },
    main_product = "fines-pulp",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk03")


FLUID {
    type = "fluid",
    name = "fines-pulp",
    icon = "__pyraworesgraphics__/graphics/icons/fines-pulp.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-coal",
    order = "c"
}
