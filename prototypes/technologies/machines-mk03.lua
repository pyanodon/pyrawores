TECHNOLOGY {
    type = "technology",
    name = "machines-mk03",
    icon = "__pyrawores__/graphics/technology/machines-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-3","machines-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
        },
        time = 60
    }
}
