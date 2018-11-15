TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk01',
    icon = '__pyrawores__/graphics/technology/nexelit-1.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','coal-processing-2'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk02',
    icon = '__pyrawores__/graphics/technology/nexelit-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','nexelit-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1},
            {'science-pack-3', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk03',
    icon = '__pyrawores__/graphics/technology/nexelit-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','nexelit-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1},
            {'science-pack-3', 1},
            {'high-tech-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk04',
    icon = '__pyrawores__/graphics/technology/nexelit-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk03'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1},
            {'science-pack-3', 1},
            {'high-tech-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}

