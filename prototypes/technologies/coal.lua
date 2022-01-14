TECHNOLOGY {
    type = "technology",
    name = "coal-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/coal-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"crusher"},
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
    name = 'coal-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/coal-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-mk01', 'logistic-science-pack'},
    dependencies = {'coal-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'coal-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/coal-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-mk02', 'chemical-science-pack', 'fuel-production-2'},
    dependencies = {'coal-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'coal-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/coal-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-mk03', 'utility-science-pack'},
    dependencies = {'coal-mk03'},
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
