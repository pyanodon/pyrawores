TECHNOLOGY {
    type = "technology",
    name = "nickel-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/nickel-1.png",
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
    name = "nickel-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/nickel-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"nickel-mk01"},
    dependencies = {"nickel-mk01"},
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
    name = "nickel-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/nickel-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"nickel-mk02"},
    dependencies = {"nickel-mk02"},
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
    name = "nickel-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/nickel-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"nickel-mk03"},
    dependencies = {"nickel-mk03"},
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
    name = "nickel-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/nickel-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"nickel-mk04"},
    dependencies = {"nickel-mk04"},
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
