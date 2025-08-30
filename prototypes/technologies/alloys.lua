TECHNOLOGY({
    type = "technology",
    name = "alloys-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/alloys-mk01.png",
    icon_size = 128,
    order = "c-a",
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
    name = "alloys-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/alloys-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = { "alloys-mk01" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "alloys-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/alloys-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = { "alloys-mk02" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "alloys-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/alloys-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = { "alloys-mk03" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 },
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "alloys-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/alloys-mk05.png",
    icon_size = 128,
    order = "c-a",
    dependencies = { "alloys-mk04" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "production-science-pack", 1 },
            { "utility-science-pack",    1 },
        },
        time = 45
    }
})
