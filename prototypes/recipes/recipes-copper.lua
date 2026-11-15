---PROCESSING RECIPES---

ITEM("copper-plate"):set("icon", "__pyraworesgraphics__/graphics/icons/copper-plate.png")
ITEM("copper-plate"):set("icon_size", 32)
RECIPE("copper-plate"):set("icons", py.composite_icon("copper-plate", "copper-ore"))


RECIPE {
    type = "recipe",
    name = "grade-2-copper",
    categories = {"solid-separator"}, --pyfe screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "copper-ore", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-copper", amount = 1},
        {type = "item", name = "grade-2-copper", amount = 2}
    },
    main_product = "grade-2-copper",
    icon = "__pyraworesgraphics__/graphics/icons/ore-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk01")

RECIPE {
    type = "recipe",
    name = "grade-1-copper-crush",
    categories = {"crusher"},
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-copper", amount = 2}
    },
    results = {
        {type = "item", name = "stone",          amount = 2},
        {type = "item", name = "grade-2-copper", amount = 1}
    },
    main_product = "grade-2-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk01")

RECIPE {
    type = "recipe",
    name = "grade-3-copper",
    categories = {"solid-separator"}, --pyfe screener
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "grade-2-copper", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-copper", amount = 1},
        {type = "item", name = "copper-rejects", amount = 1}
    },
    main_product = "grade-3-copper",
    icon = "__pyraworesgraphics__/graphics/icons/grade-2-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "copper-rejects-recrush",
    categories = {"impact-crusher"},
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "copper-rejects", amount = 1}
    },
    results = {
        {type = "item", name = "grade-3-copper", amount = 1, independent_probability = 0.5},
        {type = "item", name = "gravel",         amount = 1}
    },
    main_product = "grade-3-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "grade-4-copper",
    categories = {"solid-separator"}, --pyfe screener
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "grade-3-copper", amount = 2}
    },
    results = {
        {type = "item", name = "grade-4-copper",    amount = 1},
        {type = "item", name = "low-grade-rejects", amount = 2}
    },
    main_product = "grade-4-copper",
    icon = "__pyraworesgraphics__/graphics/icons/grade-3-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "classify-low-grade",
    categories = {"classifier"},
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "low-grade-rejects", amount = 4}
    },
    results = {
        {type = "item", name = "grade-4-copper",  amount = 1, independent_probability = 0.3},
        {type = "item", name = "copper-low-dust", amount = 1}
    },
    main_product = "grade-4-copper",
    icon = "__pyraworesgraphics__/graphics/icons/class-copper-low-dust.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "wash-coper-low-dust",
    categories = {"washer"},
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item",  name = "copper-low-dust", amount = 1},
        {type = "fluid", name = "water",           amount = 200}
    },
    results = {
        {type = "item",  name = "low-grade-copper",  amount = 1},
        {type = "fluid", name = "tailings", amount = 200}
    },
    main_product = "low-grade-copper",
    icon = "__pyraworesgraphics__/graphics/icons/wash-copper-low-dust.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "high-grade-copper",
    categories = {"chemistry"}, --pyfe agitador
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "copper-pregnant-solution", amount = 100}
    },
    results = {
        {type = "item",  name = "high-grade-copper", amount = 1},
        {type = "fluid", name = "tailings", amount = 100}
    },
    main_product = "high-grade-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk03")

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-copper",
    categories = {"drp"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "high-grade-copper", amount = 1},
        {type = "item",  name = "sodium-sulfate",    amount = 2},
        {type = "fluid", name = "diesel",            amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-copper", amount = 1}
    },
    main_product = "reduced-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk04")

RECIPE {
    type = "recipe",
    name = "sinter-copper-2",
    categories = {"sinter"},
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "reduced-copper", amount = 1},
        {type = "item",  name = "lime",           amount = 3},
        {type = "fluid", name = "syngas",         amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-copper", amount = 2}
    },
    main_product = "sintered-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk05")

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-copper-01",
    categories = {"bof"},
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "reduced-copper", amount = 1},
        {type = "item",  name = "borax",          amount = 3},
        {type = "fluid", name = "oxygen",         amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 60}
    },
    main_product = "molten-copper",
    icons = py.composite_icon("molten-copper", "reduced-copper"),
    subgroup = "py-rawores-copper",
    order = "bab"
}:add_unlock("copper-mk04")

RECIPE {
    type = "recipe",
    name = "molten-copper-02",
    categories = {"bof"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "sintered-copper", amount = 1},
        {type = "item",  name = "borax",           amount = 3},
        {type = "fluid", name = "oxygen",          amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 47}
    },
    main_product = "molten-copper",
    icons = py.composite_icon("molten-copper", "sintered-copper"),
    subgroup = "py-rawores-copper",
    order = "baa"
}:add_unlock("copper-mk05")

RECIPE {
    type = "recipe",
    name = "molten-copper-03",
    categories = {"bof"},
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "high-grade-copper", amount = 1},
        {type = "item",  name = "borax",             amount = 3},
        {type = "fluid", name = "oxygen",            amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 50}
    },
    main_product = "molten-copper",
    icons = py.composite_icon("molten-copper", "high-grade-copper"),
    subgroup = "py-rawores-copper",
    order = "bac"
}:add_unlock("copper-mk03")

RECIPE {
    type = "recipe",
    name = "molten-copper-04",
    categories = {"bof"},
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item",  name = "grade-4-copper", amount = 3},
        {type = "item",  name = "borax",          amount = 3},
        {type = "fluid", name = "oxygen",         amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 21}
    },
    main_product = "molten-copper",
    icons = py.composite_icon("molten-copper", "grade-4-copper"),
    subgroup = "py-rawores-copper",
    order = "bad"
}:add_unlock("copper-mk02")

----PLATES----

RECIPE {
    type = "recipe",
    name = "copper-plate-1",
    categories = {"casting"},
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-copper", amount = 100},
        {type = "item",  name = "borax",         amount = 3},
        {type = "item",  name = "sand-casting",  amount = 1}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 60}
    },
    main_product = "copper-plate",
    icons = py.composite_icon("copper-plate", "molten-copper"),
    subgroup = "py-rawores-copper",
    order = "aaa"
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "copper-plate-4",
    categories = {"smelting"},
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "grade-2-copper", amount = 5}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 2}
    },
    main_product = "copper-plate",
    icons = py.composite_icon("copper-plate", "grade-2-copper"),
    subgroup = "py-rawores-copper",
    order = "aab"
}:add_unlock("copper-mk01")

---EXTRA PLATE---

RECIPE {
    type = "recipe",
    name = "low-grade-smelting-copper",
    categories = {"smelting"},
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "low-grade-copper", amount = 1}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 1, independent_probability = 0.6}
    },
    main_product = "copper-plate",
    icons = py.composite_icon("copper-plate", "low-grade-copper"),
    subgroup = "py-rawores-copper",
    order = "aac"
}:add_unlock("copper-mk02")
