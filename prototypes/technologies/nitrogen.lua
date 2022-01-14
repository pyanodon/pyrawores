TECHNOLOGY {
    type = "technology",
    name = "nitrogen-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"logistic-science-pack"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 45
    }
}


TECHNOLOGY {
    type = "technology",
    name = "nitrogen-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/nitrogen.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"logistic-science-pack"},
    dependencies = {"nitrogen-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 45
    }
}

