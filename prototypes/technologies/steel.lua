TECHNOLOGY {
    type = "technology",
    name = "steel-mk02",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    order = "c-a",
    prerequisites = {},
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
    name = "steel-mk03",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    order = "c-a",
    prerequisites = {},
    dependencies = {'steel-mk02'},
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

