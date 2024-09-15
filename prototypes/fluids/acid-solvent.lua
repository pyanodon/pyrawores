RECIPE {
    type = "recipe",
    name = "acid-solvent",
    category = "chemistry", --pyfe
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 75},
        {type = "fluid", name = "hydrogen-peroxide", amount = 20},
        {type = "item", name = "iron-oxide", amount = 3}
    },
    results = {
        {type = "fluid", name = "acid-solvent", amount = 100}
    },
    main_product = "acid-solvent",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("additives")

FLUID {
    type = "fluid",
    name = "acid-solvent",
    icon = "__pyraworesgraphics__/graphics/icons/acid-solvent.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0.192, g = 0.929, b = 0.772},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-rawores-fluids",
    order = "c"
}
