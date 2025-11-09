RECIPE {
    type = "recipe",
    name = "slz-pulp-01",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item",  name = "lead-dust", amount = 2},
        {type = "fluid", name = "water",     amount = 25} --pyht cyanic acid
    },
    results = {
        {type = "fluid", name = "slz-pulp-01",       amount = 100},
        {type = "item",  name = "lead-refined-dust", amount = 1}
    },
    main_product = "slz-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/slz-pulp-01.png",
    icon_size = 32,
    subgroup = "py-rawores-lead",
    order = "q-1"
}:add_unlock("lead-mk03")

if mods.pyhightech then
    RECIPE("slz-pulp-01"):replace_ingredient_unsafe("water", {type = "fluid", name = "cyanic-acid", amount = 25})
end

FLUID {
    type = "fluid",
    name = "slz-pulp-01",
    icon = "__pyraworesgraphics__/graphics/icons/slz-pulp-01.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.4, g = 0.4, b = 0.4},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-lead",
    order = "c"
}
