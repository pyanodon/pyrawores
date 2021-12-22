TECHNOLOGY {
    type = "technology",
    name = "quartz-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/quartz-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"crusher"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/quartz-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'quartz-mk01', 'logistic-science-pack', 'filtration'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/quartz-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'quartz-mk02', 'chemical-science-pack'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/quartz-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'quartz-mk03', 'production-science-pack'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/quartz-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'quartz-mk04', 'utility-science-pack'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1}
        },
        time = 60
    }
}
