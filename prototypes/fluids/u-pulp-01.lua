RECIPE {
    type = "recipe",
    name = "u-pulp-01",
    category = "leaching",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-u", amount = 1},
        {type = "fluid", name = "steam", amount = 300, minimum_temperature = 165},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    results = {
        {type = "fluid", name = "u-pulp-01", amount = 100}
    },
    main_product = "u-pulp-01",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "u235-pulp-01",
    category = "leaching",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "uranium-235", amount = 10},
        {type = "fluid", name = "steam", amount = 300, minimum_temperature = 165},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    },
    results = {
        {type = "fluid", name = "u-pulp-01", amount = 100}
    },
    main_product = "u-pulp-01",
    subgroup = "py-rawores-uranium",
    order = "q-3"
}:add_unlock("kovarex-enrichment-process")

FLUID {
    type = "fluid",
    name = "u-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/u-pulp-01.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-uranium",
    order = "c"
}
