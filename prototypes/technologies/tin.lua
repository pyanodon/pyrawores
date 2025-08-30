TECHNOLOGY({
    type = "technology",
    name = "tin-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/tin-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
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
    name = "tin-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/tin-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "tin-mk01" },
    dependencies = { "tin-mk01" },
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
    name = "tin-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/tin-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "tin-mk02" },
    dependencies = { "tin-mk02" },
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
    name = "tin-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/tin-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "tin-mk03" },
    dependencies = { "tin-mk03" },
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
    name = "tin-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/tin-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "tin-mk04" },
    dependencies = { "tin-mk04" },
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
