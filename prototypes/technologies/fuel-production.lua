local fp = TECHNOLOGY("fuel-production")

TECHNOLOGY({
    type = "technology",
    name = "fuel-production-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/technology/fuel-production-mk02.png",
    icon_size = fp.icon_size,
    order = "c-a",
    prerequisites = { "fuel-production" },
    dependencies = { "fuel-production" },
    effects = table.deepcopy(fp.effects),
    unit = table.deepcopy(fp.unit)
})

fp:remove_pack("chemical-science-pack")
fp.effects = {}
