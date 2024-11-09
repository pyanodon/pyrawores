RECIPE {
    type = "recipe",
    name = "zinc-pulp-04",
    category = "chemistry",     --pyfe agitator
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "item",  name = "concentrated-zinc", amount = 5},
        {type = "item",  name = "lime",              amount = 17},
        {type = "fluid", name = "water",             amount = 100}
    },
    results = {
        {type = "fluid", name = "zinc-pulp-04", amount = 250}
    },
    main_product = "zinc-pulp-04",
    subgroup = "py-rawores-zinc",
    order = "q-2"
}:add_unlock("zinc-mk03")

RECIPE {
    type = "recipe",
    name = "zinc-pulp-04-2",
    category = "chemistry",     --pyfe thickener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "zinc-waste", amount = 150},
        {type = "fluid", name = "water",      amount = 400}
    },
    results = {
        {type = "fluid", name = "zinc-pulp-04",      amount = 50},
        {type = "fluid", name = "dirty-water-heavy", amount = 50}
    },
    main_product = "zinc-pulp-04",
    subgroup = "py-rawores-zinc",
    order = "q-2"
}:add_unlock("zinc-mk03")


FLUID {
    type = "fluid",
    name = "zinc-pulp-04",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-pulp-04.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.6, g = 0.904, b = 0.847},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-zinc",
    order = "c"
}
