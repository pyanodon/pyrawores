RECIPE {
    type = "recipe",
    name = "nickel-prepared-solution",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-pulp-04", amount = 100},
        {type = "fluid", name = "syngas",         amount = 200},
        {type = "item",  name = "chromium",       amount = 4}
    },
    results = {
        {type = "fluid", name = "nickel-prepared-solution", amount = 100},
        {type = "fluid", name = "dirty-water-heavy",        amount = 50}
    },
    main_product = "nickel-prepared-solution",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")

FLUID {
    type = "fluid",
    name = "nickel-prepared-solution",
    icon = "__pyraworesgraphics__/graphics/icons/nickel-prepared-solution.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.164, g = 0.388, b = 0.192},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-nickel",
    order = "c"
}
