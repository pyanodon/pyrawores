TECHNOLOGY({
    type = "technology",
    name = "nitrogen-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/nitrogen-processing-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
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
    name = "nitrogen-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/nitrogen-processing-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = { "nitrogen-mk01" },
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
    name = "nitrogen-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/nitrogen-processing-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = { "nitrogen-mk02" },
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 },
        },
        time = 60
    }
})
