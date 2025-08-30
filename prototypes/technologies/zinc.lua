TECHNOLOGY({
    type = "technology",
    name = "zinc-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/zinc-1.png",
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
    name = "zinc-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/zinc-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "zinc-mk01" },
    dependencies = { "zinc-mk01" },
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
    name = "zinc-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/zinc-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "zinc-mk02" },
    dependencies = { "zinc-mk02" },
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
    name = "zinc-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/zinc-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "zinc-mk03" },
    dependencies = { "zinc-mk03" },
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
    name = "zinc-mk05",
    icon = "__pyraworesgraphics__/graphics/technology/zinc-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "zinc-mk04" },
    dependencies = { "zinc-mk04" },
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
