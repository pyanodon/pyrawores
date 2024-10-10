RECIPE {
    type = "recipe",
    name = "al-pulp-01",
    category = "chemistry", --pyfe mixer
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "powdered-aluminium", amount = 5},
        {type = "item",  name = "lime",               amount = 10},
        {type = "fluid", name = "water",              amount = 100},
        {type = "fluid", name = "boric-acid",         amount = 30}, --pyht phosphoric acid
    },
    results = {
        {type = "fluid", name = "al-pulp-01", amount = 100},
    },
    --main_product = "powdered-aluminium",
    icon = "__pyraworesgraphics__/graphics/icons/al-pulp-01.png",
    icon_size = 32,
    subgroup = "py-rawores-aluminium",
    order = "cag"
}:add_unlock("aluminium-mk02")


FLUID {
    type = "fluid",
    name = "al-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/al-pulp-01.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.827, g = 0.568, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-aluminium",
    order = "c"
}
