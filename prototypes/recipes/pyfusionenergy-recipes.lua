RECIPE {
    type = "recipe",
    name = "al-tailings-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-tailings", amount = 300}
    },
    results = {
        {type = "fluid", name = "vanadates",         amount = 15},
        {type = "fluid", name = "tailings", amount = 75}
    },
    main_product = "vanadates",
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadates.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("aluminium-mk03")

--NITROGEN 2 --

RECIPE {
    type = "recipe",
    name = "nitrogen-pyfe",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "fluid", name = "cold-clean-air", amount = 40},
        {type = "item",  name = "active-carbon",  amount = 1}
    },
    results = {
        {type = "fluid", name = "nitrogen",       amount = 8000},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    main_product = "nitrogen",
    subgroup = "py-rawores-fluids",
    order = "dac"
}:add_unlock("nitrogen-mk03")

RECIPE {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = false,
    energy_required = 0.3,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water",    amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam",           amount = 100, temperature = 150, ignored_by_productivity = 100, ignored_by_stats = 100}
    },
    main_product = "liquid-nitrogen",
    icon = "__pyfusionenergygraphics__/graphics/icons/compress-nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}:add_unlock("nitrogen-mk02")

RECIPE {
    type = "recipe",
    name = "evaporate-nitrogen",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50}
    },
    main_product = "nitrogen",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "b"
}:add_unlock("nitrogen-mk02")

RECIPE {
    type = "recipe",
    name = "pregnant-solution-01",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "vanadium-mixture", amount = 100},
        {type = "fluid", name = "sulfuric-acid",    amount = 100}
    },
    results = {
        {type = "fluid", name = "pregnant-solution", amount = 100}
    },
    main_product = "pregnant-solution"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "vanadium-mixture",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-waste",          amount = 100},
        {type = "item",  name = "sodium-carbonate", amount = 10}
    },
    results = {
        {type = "fluid", name = "vanadium-mixture", amount = 100}
    },
    main_product = "vanadium-mixture",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "nbti-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-titanium", amount = 100},
        {type = "fluid", name = "niobium-complex", amount = 40},
        {type = "item",  name = "sand-casting",    amount = 4},
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 15}
    },
    main_product = "nbti-alloy",
    icon = "__pyfusionenergygraphics__/graphics/icons/nbti-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("alloys-mk04")

RECIPE {
    type = "recipe",
    name = "agzn-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "molten-silver", amount = 100},
        {type = "fluid", name = "molten-zinc",   amount = 100},
        {type = "item",  name = "sand-casting",  amount = 4},
    },
    results = {
        {type = "item", name = "agzn-alloy", amount = 10}
    },

}:add_unlock("alloys-mk05")

RECIPE {
    type = "recipe",
    name = "casting-lead-container",
    category = "casting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-lead",     amount = 50},
        {type = "fluid", name = "molten-steel",    amount = 50},
        {type = "fluid", name = "niobium-complex", amount = 50},
        {type = "item",  name = "sand-casting",    amount = 5},
        {type = "item",  name = "aramid",          amount = 2},
    },
    results = {
        {type = "item", name = "lead-container", amount = 3}
    },
    main_product = "lead-container",
    subgroup = "py-rawores-casting",
    order = "ec"
}:add_unlock("casting-mk03")
