RECIPE {
    type = "recipe",
    name = "petroleum-sulfonates",
    category = "rectisol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "crude-oil",        amount = 100},
        {type = "fluid", name = "sulfuric-acid",    amount = 100},
        {type = "fluid", name = "water-saline",     amount = 200},
        {type = "item",  name = "sodium-hydroxide", amount = 5},
    },
    results = {
        {type = "fluid", name = "petroleum-sulfonates", amount = 400},
    },
    main_product = "petroleum-sulfonates",
    icon = "__pyraworesgraphics__/graphics/icons/petroleum-sulfonates.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-1"
}:add_unlock("additives")


FLUID {
    type = "fluid",
    name = "petroleum-sulfonates",
    icon = "__pyraworesgraphics__/graphics/icons/petroleum-sulfonates.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.286, g = 0.015, b = 0.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
