RECIPE {
    type = "recipe",
    name = "outlet-gas-04",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "outlet-gas-03", amount = 100}
        --pyht tall-oil
    },
    results = {
        {type = "fluid", name = "outlet-gas-04", amount = 100, temperature = 1000},
        {type = "fluid", name = "aromatics", amount = 300}
        --add ammonia
    },
    main_product = "outlet-gas-04",
    subgroup = "py-rawores-coke",
    order = "q-2"
}:add_unlock("coke-mk03")

FLUID {
    type = "fluid",
    name = "outlet-gas-04",
    icon = "__pyraworesgraphics__/graphics/icons/outlet-gas-04.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.960, g = 0.701, b = 0.207},
    flow_color = {r = 0.960, g = 0.701, b = 0.207},
    max_temperature = 1000,
    gas_temperature = 15,
    subgroup = "py-rawores-coke",
    order = "c"
}
