TECHNOLOGY {
    type = "technology",
    name = "super-steel-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/super-steel.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"uranium-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "super-steel-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/super-steel.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"production-science-pack", "super-steel-mk01"},
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

