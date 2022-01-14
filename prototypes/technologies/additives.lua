TECHNOLOGY {
    type = 'technology',
    name = 'additives',
    icon = '__pyraworesgraphics__/graphics/icons/mibc.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {'mibc', "machines-mk02", "fuel-production-2"},
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
