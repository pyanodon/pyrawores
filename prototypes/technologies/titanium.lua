TECHNOLOGY {
    type = "technology",
    name = "titanium-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/titanium-1.png",
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
    name = 'titanium-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/titanium-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'titanium-mk01'},
    dependencies = {'titanium-mk01'},
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
    name = 'titanium-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/titanium-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'titanium-mk02'},
    dependencies = {'titanium-mk02'},
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
    name = 'titanium-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/titanium-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'titanium-mk03'},
    dependencies = {'titanium-mk03'},
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
    name = 'titanium-mk05',
    icon = '__pyraworesgraphics__/graphics/technology/titanium-5.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'titanium-mk04'},
    dependencies = {'titanium-mk04'},
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
