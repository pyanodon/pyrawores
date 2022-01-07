
RECIPE {
    type = "recipe",
    name = "solder-0",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 1},
        {type = "item", name = "lead-plate", amount = 2},
    },
    results = {
        {type = "item", name = "solder", amount = 1}
    },
    subgroup = "py-rawores-solder",
    order = "j"
}--:add_unlock('coal-processing-1')

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
    main_product = 'solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk01")

RECIPE {
    type = "recipe",
    name = "solder-1",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 1},
        {type = "item", name = "lead-plate", amount = 2},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 20}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk01")

RECIPE {
    type = "recipe",
    name = "solder-2",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 3},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 40}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "solder-3",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 50},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 100}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk03")
