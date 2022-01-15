TECHNOLOGY {
    type = 'technology',
    name = 'additives',
    icon = '__pyraworesgraphics__/graphics/technology/frothers.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'mibc', "machines-mk02", "fuel-production-mk02"},
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
