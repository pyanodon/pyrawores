TECHNOLOGY {
    type = "technology",
    name = "machines-mk01",
    icon = "__pyrawores__/graphics/technology/machines-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1", 'engine'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"science-pack-1", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machines-mk02',
    icon = '__pyrawores__/graphics/technology/machines-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-processing-2', 'machines-mk01'},
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
    name = 'machines-mk03',
    icon = '__pyrawores__/graphics/technology/machines-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-processing-3', 'machines-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1},
            {'science-pack-3', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machines-mk04',
    icon = '__pyrawores__/graphics/technology/machines-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'excavation-2', 'machines-mk03'},
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
