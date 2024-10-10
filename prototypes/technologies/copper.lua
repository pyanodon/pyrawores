TECHNOLOGY {
    type = "technology",
    name = "copper-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/copper-1.png",
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
    name = "copper-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/copper-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"copper-mk01"},
    dependencies = {"copper-mk01"},
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
    name = "copper-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/copper-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"copper-mk02"},
    dependencies = {"copper-mk02"},
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
    name = "copper-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/copper-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"copper-mk03"},
    dependencies = {"copper-mk03"},
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
    name = "copper-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/copper-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"copper-mk04"},
    dependencies = {"copper-mk04"},
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
