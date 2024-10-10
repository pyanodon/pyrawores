TECHNOLOGY {
    type = "technology",
    name = "gold",
    icon = "__pyraworesgraphics__/graphics/technology/gold.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            --{'production-science-pack', 1}
        },
        time = 60
    }
}
