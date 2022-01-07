TECHNOLOGY {
    type = "technology",
    name = "coke-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/coke-1.png",
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
    name = 'coke-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/coke-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coke-mk01', 'filtration'},
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
    name = 'coke-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/coke-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coke-mk02', 'chemical-science-pack', 'machines-mk02'},
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
