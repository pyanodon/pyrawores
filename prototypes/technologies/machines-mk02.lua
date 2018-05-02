TECHNOLOGY {
    type = "technology",
    name = "machines-mk02",
    icon = "__pyrawores__/graphics/technology/machines-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-2","machines-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
        },
        time = 45
    }
}
