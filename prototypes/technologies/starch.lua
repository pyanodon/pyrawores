TECHNOLOGY {
    type = "technology",
    name = "starch",
    icon = "__pyraworesgraphics__/graphics/icons/starch.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"chemical-science-pack", "salts"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 45
    }
}

