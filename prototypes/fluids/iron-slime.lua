RECIPE {
    type = "recipe",
    name = "iron-slime",
    category = "chemistry", --pyfe mixer
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 6},
        {type = "fluid", name = "dirty-water", amount = 300},
    },
    results = {
        {type = "fluid", name = "iron-slime", amount = 50},
    },
    main_product = "iron-slime",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("iron-mk03"):change_category('mixer')


FLUID {
    type = "fluid",
    name = "iron-slime",
    icon = "__pyrawores__/graphics/icons/iron-slime.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 0.086, g = 0.180, b = 0.254},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
