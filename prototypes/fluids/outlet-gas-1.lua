RECIPE {
    type = "recipe",
    name = "outlet-gas-01",
    category = "carbonfilter",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coke-oven-gas", amount = 100},
        {type = "fluid", name = "tar",           amount = 50},
        {type = "item",  name = "nickel-plate",  amount = 1},
        {type = "item",  name = "copper-cable",  amount = 3}
    },
    results = {
        {type = "fluid", name = "outlet-gas-01", amount = 100}
    },
    main_product = "outlet-gas-01",
    subgroup = "py-rawores-coke",
    order = "q-2"
}:add_unlock("coke-mk02")

FLUID {
    type = "fluid",
    name = "outlet-gas-01",
    icon = "__pyraworesgraphics__/graphics/icons/outlet-gas-01.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.960, g = 0.701, b = 0.207},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-coke",
    order = "c"
}
