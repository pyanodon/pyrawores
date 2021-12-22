TECHNOLOGY {
    type = "technology",
    name = "solder-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/lead-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"smelters-mk01"},
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
    icon = '__pyraworesgraphics__/graphics/technology/lead-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk01', 'logistic-science-pack', 'tin-mk02', 'lead-mk02'},
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
    icon = '__pyraworesgraphics__/graphics/technology/lead-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk02', 'chemical-science-pack'},
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
    icon = '__pyraworesgraphics__/graphics/technology/lead-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk03', 'production-science-pack'},
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
    icon = '__pyraworesgraphics__/graphics/technology/lead-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'solder-mk04', 'utility-science-pack'},
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
