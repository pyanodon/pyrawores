if not mods["pyalienlife"] then
    TECHNOLOGY {
        type = "technology",
        name = "starch",
        icon = "__pyraworesgraphics__/graphics/technology/starch.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {},
        effects = {},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    }
end
