TECHNOLOGY {
    type = 'technology',
    name = 'gold',
    icon = '__pyrawores__/graphics/technology/gold.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','chromium-mk03'},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {'science-pack-1', 1},
            {'science-pack-2', 1},
            {'science-pack-3', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
