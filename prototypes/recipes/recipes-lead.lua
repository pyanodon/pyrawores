RECIPE {
    type = "recipe",
    name = "grade-1-lead",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-lead", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-lead", amount = 1},
        --{type = "item", name = "grade-2-lead", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-lead",
    icon = "__pyraworesgraphics__/graphics/icons/ore-lead-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk01")

RECIPE {
    type = "recipe",
    name = "grade-2-lead-crusher",
    category = "impact-crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-lead", amount = 2}
    },
    results = {
        {type = "item", name = "stone",        amount = 1},
        {type = "item", name = "grade-2-lead", amount = 1}
    },
    main_product = "grade-2-lead",
    icon = "__pyraworesgraphics__/graphics/icons/crusher-lead.png",
    icon_size = 32,
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "grade-2-lead",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-2-lead", amount = 2}
    },
    results = {
        {type = "item", name = "grade-1-lead", amount = 1, probability = 0.5},
        {type = "item", name = "grade-3-lead", amount = 1}
    },
    main_product = "grade-3-lead",
    icon = "__pyraworesgraphics__/graphics/icons/grade-1-lead-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "grade-2-crush-lead",
    category = "crusher", --pyfe secondary-crusher
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "grade-3-lead", amount = 1}
    },
    results = {
        {type = "item", name = "lead-dust", amount = 1}
    },
    main_product = "lead-dust",
    icon = "__pyraworesgraphics__/graphics/icons/recrush-grade-3-lead.png",
    icon_size = 32,
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "lead-refined-dust-02",
    category = "ball-mill",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "lead-refined-dust", amount = 1}
    },
    results = {
        {type = "item", name = "lead-refined-dust-02", amount = 1}
    },
    main_product = "lead-refined-dust-02",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "lead-refined-dust-03",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "item", name = "lead-refined-dust-02", amount = 1}
    },
    results = {
        {type = "item", name = "lead-refined-dust-03", amount = 1},
        {type = "item", name = "sand",                 amount = 1}
    },
    main_product = "lead-refined-dust-03",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "sl-concentrate",
    category = "carbonfilter",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "sl-03",            amount = 400},
        {type = "item",  name = "filtration-media", amount = 1}
    },
    results = {
        {type = "item", name = "sl-concentrate", amount = 4}
    },
    main_product = "sl-concentrate",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "high-grade-sl",
    category = "solid-separator",
    enabled = false,
    energy_required = 3.0,
    ingredients = {
        {type = "item", name = "sl-concentrate", amount = 4}
    },
    results = {
        {type = "item", name = "high-grade-lead", amount = 1},
    },
    main_product = "high-grade-lead",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "high-grade-silv",
    category = "solid-separator",
    enabled = false,
    energy_required = 3.0,
    ingredients = {
        {type = "item", name = "sl-concentrate", amount = 4}
    },
    results = {
        {type = "item", name = "high-grade-silver", amount = 1}
    },
    main_product = "high-grade-silver",
    subgroup = "py-rawores-lead",
}:add_unlock("silver-mk03")

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-lead",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "high-grade-lead", amount = 1},
        {type = "item",  name = "sodium-sulfate",  amount = 2},
        {type = "fluid", name = "diesel",          amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-lead", amount = 1}
    },
    main_product = "reduced-lead",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk04")

RECIPE {
    type = "recipe",
    name = "sinter-lead-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "reduced-lead", amount = 1},
        {type = "item",  name = "lime",         amount = 3},
        {type = "fluid", name = "syngas",       amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-lead", amount = 2}
    },
    main_product = "sintered-lead",
    subgroup = "py-rawores-lead",
}:add_unlock("lead-mk05")

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-lead-01",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-dust", amount = 4},
        {type = "item", name = "borax",     amount = 2}
    },
    results = {
        {type = "fluid", name = "molten-lead", amount = 90}
    },
    main_product = "molten-lead",
    subgroup = "py-rawores-lead",
    order = "bad"
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "molten-lead-02",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "sl-01", amount = 100},
        {type = "item",  name = "borax", amount = 3}
    },
    results = {
        {type = "fluid", name = "molten-lead", amount = 70}
    },
    main_product = "molten-lead",
    subgroup = "py-rawores-lead",
    order = "bae"
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "molten-lead-03",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-lead", amount = 1},
        {type = "item", name = "borax",           amount = 2}
    },
    results = {
        {type = "fluid", name = "molten-lead", amount = 500}
    },
    main_product = "molten-lead",
    subgroup = "py-rawores-lead",
    order = "bac"
}:add_unlock("lead-mk03")

RECIPE {
    type = "recipe",
    name = "molten-lead-04",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-lead", amount = 1},
        {type = "item", name = "borax",        amount = 3}
    },
    results = {
        {type = "fluid", name = "molten-lead", amount = 1000}
    },
    main_product = "molten-lead",
    subgroup = "py-rawores-lead",
    order = "baa"
}:add_unlock("lead-mk04")

RECIPE {
    type = "recipe",
    name = "molten-lead-05",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sintered-lead", amount = 1},
        {type = "item", name = "borax",         amount = 3}
    },
    results = {
        {type = "fluid", name = "molten-lead", amount = 650}
    },
    main_product = "molten-lead",
    subgroup = "py-rawores-lead",
    order = "bab"
}:add_unlock("lead-mk05")

--CASTINGS

RECIPE {
    type = "recipe",
    name = "lead-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-lead",  amount = 100},
        {type = "item",  name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "lead-plate", amount = 50}
    },
    main_product = "lead-plate",
    subgroup = "py-rawores-lead",
    order = "aaa"
}:add_unlock("lead-mk02")

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "lead-plate-1",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ore-lead", amount = 6}
    },
    results = {
        {type = "item", name = "lead-plate", amount = 1}
    },
    subgroup = "py-rawores-lead",
    order = "aac"
}:add_unlock("solder-mk01")

--PLATES

RECIPE {
    type = "recipe",
    name = "lead-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "grade-1-lead", amount = 4}
    },
    results = {
        {type = "item", name = "lead-plate", amount = 10}
    },
    subgroup = "py-rawores-lead",
    order = "aab"
}:add_unlock("lead-mk01")
