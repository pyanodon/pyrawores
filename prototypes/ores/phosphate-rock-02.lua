DATA {
    type = "autoplace-control",
    category = "resource",
    name = "phosphate-rock-02",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "phosphate-rock-02"
}

DATA {
    type = "resource",
    name = "phosphate-rock-02",
    category = "phosphate-rock-02",
    icon = "__pyraworesgraphics__/graphics/icons/ores/phosphate-rock-02.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.8, g = 0.8, b = 0.8},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "phosphate-rock-02-particle",
        mining_time = 1,
        results = {
            {"phosphate-rock", 1}
        },
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "phosphate-rock-02",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/phosphate/phosphate-mine-place.png",
            priority = "extra-high",
            width = 416,
            height = 416,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
