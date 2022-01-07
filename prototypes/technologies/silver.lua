TECHNOLOGY {
    type = 'technology',
    name = 'silver-mk01',
    icon = '__pyraworesgraphics__/graphics/icons/silver-plate.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {"lead-mk02"},
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
    name = 'silver-mk02',
    icon = '__pyraworesgraphics__/graphics/icons/silver-plate.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'chemical-science-pack', 'lead-mk03'},
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
    name = 'silver-mk03',
    icon = '__pyraworesgraphics__/graphics/icons/silver-plate.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'silver-mk02', 'production-science-pack'},
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
    name = 'silver-mk04',
    icon = '__pyraworesgraphics__/graphics/icons/silver-plate.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'silver-mk03', 'utility-science-pack'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'silver-mk05',
    icon = '__pyraworesgraphics__/graphics/icons/silver-plate.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'silver-mk04', 'utility-science-pack'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'space-science-pack', 1},
        },
        time = 60
    }
}

