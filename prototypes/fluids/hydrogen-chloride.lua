RECIPE {
    type = "recipe",
    name = "hydrogen-chloride",
    category = "chemistry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "chlorine",   amount = 100},
        {type = "fluid", name = "hydrogen",   amount = 100},
        {type = "item",  name = "small-lamp", amount = 1}
    },
    results = {
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "item",  name = "small-lamp",        amount = 1,  probability = 0.5}
    },
    main_product = "hydrogen-chloride",
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "caa"
}:add_unlock("filtration")

RECIPE {
    type = "recipe",
    name = "sodium-bisulfate",
    category = "chemistry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "salt",          amount = 10},
        {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    results = {
        {type = "item",  name = "sodium-bisulfate",  amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 30}
    },
    main_product = "sodium-bisulfate",
    icon = "__pyraworesgraphics__/graphics/icons/sodium-bisulfate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("salts")

RECIPE {
    type = "recipe",
    name = "sodium-sulfate",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "salt",             amount = 5},
        {type = "item", name = "sodium-bisulfate", amount = 1}
    },
    results = {
        {type = "item",  name = "sodium-sulfate",    amount = 1},
        {type = "fluid", name = "hydrogen-chloride", amount = 40}
    },
    main_product = "sodium-sulfate",
    icon = "__pyraworesgraphics__/graphics/icons/sodium-sulfate.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("salts")

FLUID {
    type = "fluid",
    name = "hydrogen-chloride",
    icon = "__pyraworesgraphics__/graphics/icons/hydrogen-chloride.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.737, g = 0.878, b = 0.580},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
