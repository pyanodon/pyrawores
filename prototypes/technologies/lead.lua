TECHNOLOGY {
    type = "technology",
    name = "lead-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/lead-1.png",
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
    name = 'lead-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/lead-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'lead-mk01'},
    dependencies = {'lead-mk01'},
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
    name = 'lead-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/lead-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'lead-mk02'},
    dependencies = {'lead-mk02'},
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
    name = 'lead-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/lead-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'lead-mk03'},
    dependencies = {'lead-mk03'},
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
    name = 'lead-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/lead-5.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'lead-mk04'},
    dependencies = {'lead-mk04'},
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
