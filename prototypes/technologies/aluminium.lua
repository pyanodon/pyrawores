TECHNOLOGY({
    type = "technology",
    name = "aluminium-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/aluminium-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "casting-mk01" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "aluminium-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/aluminium-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "aluminium-mk01" },
    dependencies = { "aluminium-mk01" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 }
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "aluminium-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/aluminium-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "aluminium-mk02" },
    dependencies = { "aluminium-mk02" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 }
        },
        time = 60
    }
})

TECHNOLOGY({
    type = "technology",
    name = "aluminium-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/aluminium-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "aluminium-mk03" },
    dependencies = { "aluminium-mk03" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 }
        },
        time = 60
    }
})

TECHNOLOGY({
    type = "technology",
    name = "aluminium-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/aluminium-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "aluminium-mk04" },
    dependencies = { "aluminium-mk04" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "production-science-pack", 1 },
            { "utility-science-pack",    1 }
        },
        time = 60
    }
})
