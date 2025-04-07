RECIPE {
    type = "recipe",
    name = "grade-1-u",
    category = "crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-ore", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-u", amount = 1},
        {type = "item", name = "stone",     amount = 1},
        {type = "item", name = "grade-2-u", amount = 1, probability = 0.2},
    },
    main_product = "grade-1-u",
    icon = "__pyraworesgraphics__/graphics/icons/crush-uranium.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-1-u-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-1-u", amount = 1}
    },
    results = {
        {type = "item", name = "grade-2-u", amount = 1},
        {type = "item", name = "gravel",    amount = 1, probability = 0.5},
    },
    main_product = "grade-2-u",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-2-u-crush",
    category = "crusher", --pyfe secondary crusher
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-u", amount = 1}
    },
    results = {
        {type = "item", name = "powdered-u", amount = 1},
        {type = "item", name = "sand",       amount = 1, probability = 0.5},
    },
    main_product = "powdered-u",
    icon = "__pyraworesgraphics__/graphics/icons/grade-2-u-recrush.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "20-u-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-pulp-01", amount = 100}
    },
    results = {
        {type = "item", name = "20-u-powder", amount = 1},
        {type = "item", name = "sand",        amount = 1, probability = 0.3},
        {type = "item", name = "uranium-238", amount = 7}
    },
    main_product = "20-u-powder",
    icon = "__pyraworesgraphics__/graphics/icons/powdered-u-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01") --.category = 'screener' TODO: move to something with a fluid box

RECIPE {
    type = "recipe",
    name = "40-u-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-rich-pulp", amount = 100}
    },
    results = {
        {type = "item", name = "40-u-powder", amount = 1},
        {type = "item", name = "uranium-238", amount = 5}
    },
    main_product = "40-u-powder",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "70-u-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-70", amount = 100}
    },
    results = {
        {type = "item", name = "70-u-powder", amount = 1},
        {type = "item", name = "uranium-238", amount = 2}
    },
    main_product = "70-u-powder",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "yellow-cake",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-83",    amount = 100},
        {type = "item",  name = "biofilm", amount = 5}
    },
    results = {
        {type = "item",  name = "yellow-cake",       amount = 1},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
        {type = "item",  name = "uranium-238",       amount = 7}
    },
    main_product = "yellow-cake",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "yellow-cake-u235",
    category = "hpf",
    enabled = false,
    energy_required = 7.5,
    ingredients = {
        {type = "item",  name = "yellow-cake", amount = 2},
        {type = "fluid", name = "oxygen",      amount = 500}
    },
    results = {
        {type = "item", name = "uranium-235", amount = 1}
    },
    main_product = "uranium-235",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "20-u-powder",    amount = 4},
        --{type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "titanium-plate", amount = 2},
    },
    results = {
        {type = "item", name = "fuelrod-mk02", amount = 1},
    },
    main_product = "fuelrod-mk02",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "40-u-powder", amount = 4},
        --{type = "item", name = "fuelrod-mk02", amount = 1},
        {type = "item", name = "lead-plate",  amount = 5},
    },
    results = {
        {type = "item", name = "fuelrod-mk03", amount = 1},
    },
    main_product = "fuelrod-mk03",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk04",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "70-u-powder", amount = 4},
        --{type = "item", name = "fuelrod-mk03", amount = 1},
        {type = "item", name = "zinc-plate",  amount = 2},
    },
    results = {
        {type = "item", name = "fuelrod-mk04", amount = 1},
    },
    main_product = "fuelrod-mk04",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk05",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "yellow-cake",     amount = 2},
        --{type = "item", name = "fuelrod-mk04", amount = 1},
        {type = "item", name = "stainless-steel", amount = 1},
    },
    results = {
        {type = "item", name = "fuelrod-mk05", amount = 1},
    },
    main_product = "fuelrod-mk05",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 1},
        {type = "item", name = "fuelrod-mk02",      amount = 2},
        {type = "item", name = "titanium-plate",    amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk02", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk02",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell-mk02", amount = 1},
        {type = "item", name = "fuelrod-mk03",           amount = 2},
        {type = "item", name = "lead-plate",             amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk03", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk03",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk04",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell-mk03", amount = 1},
        {type = "item", name = "fuelrod-mk04",           amount = 2},
        {type = "item", name = "zinc-plate",             amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk04", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk04",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk05",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell-mk04", amount = 1},
        {type = "item", name = "fuelrod-mk05",           amount = 2},
        {type = "item", name = "stainless-steel",        amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk05", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk05",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-mk02",
    category = "centrifuging",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "used-up-uranium-fuel-cell-mk02", amount = 5}
    },
    results = {
        {type = "item", name = "uranium-238", amount = 3},
        {type = "item", name = "uranium-235", amount = 1}
    },
    main_product = "uranium-238",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-fuel-reprocessing")

RECIPE {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-mk03",
    category = "centrifuging",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "used-up-uranium-fuel-cell-mk03", amount = 5}
    },
    results = {
        {type = "item", name = "uranium-238", amount = 7},
        {type = "item", name = "uranium-235", amount = 4}
    },
    main_product = "uranium-238",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-fuel-reprocessing")

RECIPE {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-mk04",
    category = "centrifuging",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "used-up-uranium-fuel-cell-mk04", amount = 5}
    },
    results = {
        {type = "item", name = "uranium-238", amount = 6},
        {type = "item", name = "uranium-235", amount = 3}
    },
    main_product = "uranium-238",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "nuclear-fuel-reprocessing-mk05",
    category = "centrifuging",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "used-up-uranium-fuel-cell-mk05", amount = 5}
    },
    results = {
        {type = "item", name = "uranium-238", amount = 8},
        {type = "item", name = "uranium-235", amount = 5}
    },
    main_product = "uranium-238",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")
