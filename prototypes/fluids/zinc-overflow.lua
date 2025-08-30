RECIPE({
    type = "recipe",
    name = "zinc-overflow",
    category = "chemistry", --pyfe jig
    enabled = false,
    energy_required = 3,
    ingredients = {
        { type = "item",  name = "powdered-zinc", amount = 5 },
        { type = "fluid", name = "water",         amount = 100 },
        { type = "fluid", name = "kerosene",      amount = 50 }
    },
    results = {
        { type = "fluid", name = "zinc-overflow", amount = 50 },
        { type = "fluid", name = "tailings",      amount = 50 }
    },
    main_product = "zinc-overflow",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-overflow.png",
    icon_size = 32,
    subgroup = "py-rawores-zinc",
    order = "q-2"
}):add_unlock("zinc-mk03")

FLUID({
    type = "fluid",
    name = "zinc-overflow",
    icon = "__pyraworesgraphics__/graphics/icons/zinc-overflow.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 0.6, g = 0.901, b = 0.847 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-zinc",
    order = "c"
})
