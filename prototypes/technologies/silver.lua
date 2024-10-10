TECHNOLOGY {
    type = "technology",
    name = "silver-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/silver-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "silver-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/silver-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"silver-mk01"},
    dependencies = {"silver-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "silver-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/silver-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"silver-mk02"},
    dependencies = {"silver-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "silver-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/silver-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"silver-mk03"},
    dependencies = {"silver-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"military-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "silver-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/silver-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"silver-mk04"},
    dependencies = {"silver-mk04"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"military-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1},
            {"space-science-pack",      1},
        },
        time = 60
    }
}
