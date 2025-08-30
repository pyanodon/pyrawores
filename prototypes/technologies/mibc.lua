TECHNOLOGY({
    type = "technology",
    name = "mibc",
    icon = "__pyraworesgraphics__/graphics/technology/mibc.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = mods.pyalienlife and {
            { "automation-science-pack", 3 },
            { "py-science-pack-1",       1 },
            { "logistic-science-pack",   1 },
            { "py-science-pack-2",       1 },
        } or {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
        },
        time = 45
    }
})
