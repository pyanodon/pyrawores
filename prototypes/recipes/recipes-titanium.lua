RECIPE {
    type = "recipe",
    name = "grade-1-ti",
    category = "solid-separator",--pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-titanium", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-ti", amount = 1},
        {type = "item", name = "grade-2-ti", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-ti",
    icon = "__pyrawores__/graphics/icons/ore-titanium-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk01"):change_category('screener')

RECIPE {
    type = "recipe",
    name = "grade-2-crush",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-2-ti", amount = 1}
    },
    results = {
        {type = "item", name = "stone", amount = 1},
        {type = "item", name = "grade-1-ti", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-ti",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk01")



--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-titanium",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-ti", amount = 1},
    },
    main_product = "reduced-ti",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-titanium-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-ti", amount = 1},
    },
    main_product = "sintered-ti",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-titanium-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-ti", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-ti", amount = 2},
    },
    main_product = "sintered-ti",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-titanium-01",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ti-enriched-dust", amount = 2},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3}, 
        {type = "fluid", name = "heavy-oil", amount = 100}, 
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 10},
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk02")

RECIPE {
    type = "recipe",
    name = "molten-titanium-02",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "concentrated-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3}, 
        {type = "fluid", name = "heavy-oil", amount = 100}, 
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 20},
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk03")

RECIPE {
    type = "recipe",
    name = "molten-titanium-03",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3}, 
        {type = "fluid", name = "heavy-oil", amount = 100}, 
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 30},
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-titanium-04",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3}, 
        {type = "fluid", name = "heavy-oil", amount = 100}, 
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 50},
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04")

RECIPE {
    type = "recipe",
    name = "molten-titanium-05",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sintered-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3}, 
        {type = "fluid", name = "heavy-oil", amount = 100}, 
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 100},
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk04")


--CASTINGS


RECIPE {
    type = "recipe",
    name = "titanium-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-titanium", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 20}
    },
    main_product= "titanium-plate",
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("titanium-mk02")


--INITIAL PLATE


RECIPE {
    type = "recipe",
    name = "titanium-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ore-titanium", amount = 6}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 1}
    },
    --main_product= "glass",
    subgroup = "py-rawores-recipes",
    order = "j"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "titanium-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grade-3-ti", amount = 1}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("titanium-mk01")

RECIPE {
    type = "recipe",
    name = "titanium-plate-4",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "powdered-ti", amount = 1}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 3}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("titanium-mk02")