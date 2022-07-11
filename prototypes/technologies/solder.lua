TECHNOLOGY {
    type = "technology",
    name = "solder-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/solder-1.png",
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
    name = 'solder-mk02',
    icon = "__pyraworesgraphics__/graphics/technology/solder-2.png",
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk01'},
    dependencies = {'solder-mk01'},
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
    name = 'solder-mk03',
    icon = "__pyraworesgraphics__/graphics/technology/solder-3.png",
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk02'},
    dependencies = {'solder-mk02'},
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
    name = 'solder-mk04',
    icon = "__pyraworesgraphics__/graphics/technology/solder-4.png",
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk03'},
    dependencies = {'solder-mk03'},
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
    name = 'solder-mk05',
    icon = "__pyraworesgraphics__/graphics/technology/solder-5.png",
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk04'},
    dependencies = {'solder-mk04'},
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
