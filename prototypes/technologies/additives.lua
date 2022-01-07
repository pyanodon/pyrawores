TECHNOLOGY {
    type = 'technology',
    name = 'additives-mk01',
    icon = '__pyraworesgraphics__/graphics/icons/mibc.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {"coal-processing-2"},
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
    name = 'additives-mk02',
    icon = '__pyraworesgraphics__/graphics/icons/mibc.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'additives-mk01', "machines-mk02", "fuel-production-2"},
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
    name = 'additives-mk03',
    icon = '__pyraworesgraphics__/graphics/icons/mibc.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'additives-mk02', 'production-science-pack'},
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

