RECIPE {
    type = "recipe",
    name = "prepared-nickel-pulp",
    category = "chemistry",     --pyfe hydrocyclone
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",  amount = 100},
        {type = "item",  name = "grade-4-nickel", amount = 1}
    },
    results = {
        {type = "fluid", name = "prepared-nickel-pulp", amount = 50},
        {type = "fluid", name = "dirty-water-heavy",    amount = 100}
    },
    main_product = "prepared-nickel-pulp",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")

FLUID {
    type = "fluid",
    name = "prepared-nickel-pulp",
    icon = "__pyraworesgraphics__/graphics/icons/prepared-nickel-pulp.png",
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
