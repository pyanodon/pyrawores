TECHNOLOGY {
    type = "technology",
    name = "smelters-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/smelter-1.png",
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
    type = 'technology',
    name = 'smelters-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/smelter-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'smelters-mk01'},
    dependencies = {'smelters-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'smelters-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/smelter-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"smelters-mk02"},
    dependencies = {'smelters-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'smelters-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/smelter-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"smelters-mk03"},
    dependencies = {'smelters-mk03'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1}
        },
        time = 60
    }
}
