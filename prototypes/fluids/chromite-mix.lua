RECIPE {
    type = "recipe",
    name = "chromite-mix",
    category = "chemistry", --pyFE mixer
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "chromite-solution", amount = 100},
        {type = "fluid", name = "hydrogen-peroxide", amount = 100},
    },
    results = {
        {type = "fluid", name = "chromite-mix", amount = 50},
    },
    main_product = "chromite-mix",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("gold")


FLUID {
    type = "fluid",
    name = "chromite-mix",
    icon = "__pyraworesgraphics__/graphics/icons/chromite-mix.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.058, g = 0.509, b = 0.788},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-chromium",
    order = "c"
}
