RECIPE({
    type = "recipe",
    name = "mibc",
    category = "chemistry", --pyfe mixer
    enabled = false,
    energy_required = 4,
    ingredients = {
        { type = "fluid", name = "petroleum-gas", amount = 150 },
        { type = "fluid", name = "aromatics",     amount = 50 }, --pyht acetone
        { type = "item",  name = "copper-plate",  amount = 5 },
    },
    results = {
        { type = "fluid", name = "mibc", amount = 200 },
    },
    main_product = "mibc",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}):add_unlock("mibc")


FLUID({
    type = "fluid",
    name = "mibc",
    icon = "__pyraworesgraphics__/graphics/icons/mibc.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = { r = 0.313, g = 0.674, b = 0.741 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
})
