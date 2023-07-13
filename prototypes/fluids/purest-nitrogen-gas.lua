RECIPE {
    type = "recipe",
    name = "purest-nitrogen-gas",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {},
    results = {
        {type = "fluid", name = "purest-nitrogen-gas", amount = 60},
        {type = "fluid", name = "nitrogen", amount = 20},
        {type = "fluid", name = "oxygen", amount = 20}
    },
    localised_name = {"recipe-name.fractional-distillation"},
    localised_description = {"recipe-description.fractional-distillation"},
    subgroup = "py-rawores-fluids",
    order = "dab",
    icon = "__pyraworesgraphics__/graphics/icons/fractional-distillation.png",
    icon_size = 32
}:add_unlock("nitrogen-mk01")

FLUID {
    type = "fluid",
    name = "purest-nitrogen-gas",
    icon = "__pyraworesgraphics__/graphics/icons/purest-nitrogen-gas.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.013, g = 0.264, b = 0.9},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}

if mods["pyfusionenergy"] then
    RECIPE {
        type = "recipe",
        name = "purest-nitrogen-gas-recycle",
        category = "vacuum",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "purest-nitrogen-gas", amount = 60}
        },
        results = {
            {type = "fluid", name = "pressured-air", amount = 60}
        },
        main_product = "pressured-air"
    }:add_unlock("nitrogen-mk01")
end