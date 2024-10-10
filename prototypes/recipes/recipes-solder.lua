RECIPE {
    type = "recipe",
    name = "solder-0",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "tin-plate",  amount = 2},
        {type = "item", name = "lead-plate", amount = 4},
    },
    results = {
        {type = "item", name = "solder", amount = 1}
    },
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk01")

RECIPE {
    type = "recipe",
    name = "solder",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-solder", amount = 50},
    },
    results = {
        {type = "item", name = "solder", amount = 5}
    },
    main_product = "solder",
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

--[[
RECIPE {
    type = "recipe",
    name = "solder-1",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 5},
        {type = "item", name = "lead-plate", amount = 8},
        {type = "fluid", name = "tar", amount = 50},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 10}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "solder-2",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 5},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 20}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "solder-3",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 20},
        {type = "item", name = "lead-plate", amount = 15},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 50},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 40}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk03")
]] --

--SOLDER

RECIPE {
    type = "recipe",
    name = "molten-solder-0",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-tin",  amount = 10},
        {type = "fluid", name = "molten-lead", amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 20}
    },
    main_product = "molten-solder",
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "molten-solder-1",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin",  amount = 10},
        {type = "fluid", name = "molten-lead", amount = 20},
        {type = "fluid", name = "tar",         amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 40}
    },
    main_product = "molten-solder",
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "molten-solder-2",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin",    amount = 30},
        {type = "fluid", name = "molten-copper", amount = 10},
        {type = "fluid", name = "molten-silver", amount = 10},
        {type = "fluid", name = "tar",           amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 70}
    },
    main_product = "molten-solder",
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk03")

RECIPE {
    type = "recipe",
    name = "molten-solder-3",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin",    amount = 20},
        {type = "fluid", name = "molten-lead",   amount = 50},
        {type = "fluid", name = "molten-silver", amount = 10},
        {type = "fluid", name = "tar",           amount = 50},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 140}
    },
    main_product = "molten-solder",
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk04")
