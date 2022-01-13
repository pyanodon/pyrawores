TECHNOLOGY {
    type = 'technology',
    name = 'mibc',
    icon = '__pyraworesgraphics__/graphics/icons/mibc.png',
    icon_size = 32,
    order = 'c-a',
    prerequisites = {"coal-processing-2"},
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
