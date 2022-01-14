TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk01',
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-1.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"fluid-processing-machines-1"},
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
    name = 'nexelit-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'chemical-science-pack'},
    dependencies = {'nexelit-mk01'},
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
    name = 'nexelit-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk02', 'production-science-pack'},
    dependencies = {'nexelit-mk02'},
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
    name = 'nexelit-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk03', 'utility-science-pack'},
    dependencies = {'nexelit-mk03'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/nexelit-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk04', 'utility-science-pack'},
    dependencies = {'nexelit-mk04'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'military-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'space-science-pack', 1},
        },
        time = 60
    }
}

