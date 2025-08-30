TECHNOLOGY({
    type = "technology",
    name = "big-mines",
    icon = "__pyraworesgraphics__/graphics/technology/large-scale-mining.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = { "construction-robotics" },
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
