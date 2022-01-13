TECHNOLOGY {
    type = "technology",
    name = "stainless-steel-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/stainless-steel.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"niobium", "steel-mk02", "aramid"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "stainless-steel-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/stainless-steel.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"chemical-science-pack", "chromium-mk03"},
    dependencies = {'stainless-steel-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 60
    }
}

