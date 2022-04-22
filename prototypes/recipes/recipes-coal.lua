
RECIPE {
    type = "recipe",
    name = "distilled-raw-coal",
    category = "distilator",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "raw-coal", amount = 10}
    },
    results = {
        {type = "fluid", name = "coal-gas", amount = 60},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.2},
        {type = "item", name = "coal", amount = 3}
    },
    main_product = "coal",
    icon = "__pyraworesgraphics__/graphics/icons/coalgas-from-rawcoal.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "d"
}

--PROCESSING RECIPES

RECIPE {
    type = "recipe",
    name = "crushed-coal",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "raw-coal", amount = 3}
    },
    results = {
        {type = "item", name = "crushed-coal", amount = 1},
        {type = "item", name = "coal", amount = 2},
        {type = "item", name = "coal-dust", amount = 1, probability = 0.3}
    },
    main_product = "crushed-coal",
    icon = "__pyraworesgraphics__/graphics/icons/recrush-coal.png",
    icon_size = 32,
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk01")

RECIPE {
    type = "recipe",
    name = "coarse-coal-to-coal",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coarse-coal", amount = 3}
    },
    results = {
        {type = "item", name = "coal", amount = 4},
    },
    main_product = "coal",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk02")

RECIPE {
    type = "recipe",
    name = "coarse-coal",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "crushed-coal", amount = 2}
    },
    results = {
        {type = "item", name = "coarse-coal", amount = 1},
        {type = "item", name = "coal", amount = 4},
        {type = "item", name = "coal-dust", amount = 1, probability = 0.3}
    },
    main_product = "coarse-coal",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk02")

RECIPE {
    type = "recipe",
    name = "coarse-to-coal",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "fines-pulp", amount = 100}
    },
    results = {
        {type = "item", name = "coal", amount = 6},
    },
    main_product = "coal",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk03")

RECIPE {
    type = "recipe",
    name = "filter-coal-pulp-01",
    category = "carbonfilter",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "biofilm", amount = 1},
        {type = "fluid", name = "coal-pulp-01", amount = 150},
        {type = "fluid", name = "water", amount = 200},
    },
    results = {
        {type = "item", name = "coal", amount = 40},
    },
    main_product = "coal",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk04")

RECIPE {
    type = "recipe",
    name = "coal-pulp-02",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-pulp-02", amount = 100},
        {type = "fluid", name = "slacked-lime", amount = 100},
        --pyFE air
    },
    results = {
        {type = "fluid", name = "high-ash-fines", amount = 30},
        {type = "fluid", name = "conditioned-fines", amount = 50},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
        {type = "item", name = "pyrite", amount = 1, probability = 0.4},
    },
    main_product = "conditioned-fines",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk04")


--HIGH ASH FINES RECLAMATION

RECIPE {
    type = "recipe",
    name = "high-ash-fines-reclamation",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "high-ash-fines", amount = 100},
    },
    results = {
        {type = "fluid", name = "coal-slime-overflow", amount = 50},
        {type = "fluid", name = "coal-under-pulp", amount = 50},
    },
    main_product = "coal-under-pulp",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk03")

RECIPE {
    type = "recipe",
    name = "coal-slime-overflow",
    category = "chemistry", --pyfe thickener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-slime-overflow", amount = 100},
        {type = "fluid", name = "organic-solvent", amount = 50}, --pyfe industrial solvent
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 300},
        {type = "fluid", name = "dirty-water-heavy", amount = 300},
    },
    main_product = "refsyngas",
    subgroup = "py-rawores-coal",
    order = "zaa"
}:add_unlock("coal-mk03")

RECIPE {
    type = "recipe",
    name = "coal-pulp-05-refining",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-pulp-05", amount = 100},
        {type = "fluid", name = "tar", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "fluid", name = "coal-pulp-04", amount = 50},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
        {type = "item", name = "coal", amount = 20},
    },
    main_product = "coal",
    subgroup = "py-rawores-coal",
}:add_unlock("coal-mk03")
