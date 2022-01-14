TECHNOLOGY {
    type = "technology",
    name = "iron-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/iron-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"casting-mk01", "energy-1"},
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
    name = 'iron-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/iron-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'iron-mk01', 'coal-processing-2'},
    dependencies = {'iron-mk01'},
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
    name = 'iron-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/iron-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'chemical-science-pack', 'additives'},
    dependencies = {'iron-mk02'},
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
    name = 'iron-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/iron-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'iron-mk03', 'production-science-pack'},
    dependencies = {'iron-mk03'},
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
    name = 'iron-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/iron-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'iron-mk04', 'utility-science-pack'},
    dependencies = {'iron-mk04'},
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
