TECHNOLOGY {
    type = "technology",
    name = "salts",
    icon = "__pyraworesgraphics__/graphics/technology/salt.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"filtration-mk02"},
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

