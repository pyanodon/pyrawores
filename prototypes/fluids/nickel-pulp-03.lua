RECIPE {
    type = "recipe",
    name = "nickel-pulp-03",
    category = "scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-tailings",   amount = 100},
        {type = "item",  name = "ammonium-chloride", amount = 2},
        {type = "item",  name = "sand",              amount = 10},
    },
    results = {
        {type = "fluid", name = "nickel-pulp-03", amount = 100},
    },
    main_product = "nickel-pulp-03",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")


FLUID {
    type = "fluid",
    name = "nickel-pulp-03",
    icon = "__pyraworesgraphics__/graphics/icons/nickel-pulp-03.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.164, g = 0.388, b = 0.192},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-nickel",
    order = "c"
}
