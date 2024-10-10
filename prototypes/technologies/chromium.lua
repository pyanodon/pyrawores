TECHNOLOGY {
    type = "technology",
    name = "chromium-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/chromium-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "chromium-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/chromium-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"chromium-mk01"},
    dependencies = {"chromium-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "chromium-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/chromium-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"chromium-mk02"},
    dependencies = {"chromium-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "chromium-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/chromium-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"chromium-mk03"},
    dependencies = {"chromium-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "chromium-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/chromium-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"chromium-mk04"},
    dependencies = {"chromium-mk04"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"military-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1}
        },
        time = 60
    }
}
