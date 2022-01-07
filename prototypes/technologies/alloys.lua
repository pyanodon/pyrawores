TECHNOLOGY {
    type = "technology",
    name = "alloys",
    icon = "__pyraworesgraphics__/graphics/icons/duralumin.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"chemical-science-pack", "aluminium-mk01", "copper-mk02", "nickel-mk02", "chromium-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 45
    }
}

