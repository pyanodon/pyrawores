TECHNOLOGY {
    type = "technology",
    name = "machines-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/machines-mk01.png",
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
    name = 'machines-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk01'},
    dependencies = {'machines-mk01'},
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
    name = 'machines-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {"machines-mk02"},
    dependencies = {'machines-mk02'},
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
    name = 'machines-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03'},
    dependencies = {'machines-mk03'},
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
    name = 'machines-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk05.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04'},
    dependencies = {'machines-mk04'},
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
