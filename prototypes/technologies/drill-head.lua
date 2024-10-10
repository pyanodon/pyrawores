TECHNOLOGY {
    type = "technology",
    name = "drill-head-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/drill-head-mk01.png",
    icon_size = 128,
    order = "c-a",
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
    name = "drill-head-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/drill-head-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"drill-head-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "drill-head-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/drill-head-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"drill-head-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 45
    }
}
