TECHNOLOGY {
    type = "technology",
    name = "electrolysis",
    icon = "__pyraworesgraphics__/graphics/technology/electrolysis.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}
