TECHNOLOGY {
    type = "technology",
    name = "machines-mk04",
    icon = "__pyrawores__/graphics/technology/machines-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"excavation-2","machines-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"production-science-pack", 1}
        },
        time = 60
    }
}
