TECHNOLOGY({
    type = "technology",
    name = "stainless-steel-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/stainless-steel-1.png",
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
        time = 60
    }
})

TECHNOLOGY({
    type = "technology",
    name = "stainless-steel-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/stainless-steel-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = { "stainless-steel-mk01" },
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
