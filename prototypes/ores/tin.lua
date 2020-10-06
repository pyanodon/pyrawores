local resource_autoplace = require("resource-autoplace")

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-tin",
    richness = true,
    order = "p-tin"
}

DATA {
    type = "noise-layer",
    name = "ore-tin"
}

ENTITY {
    type = "resource",
    name = "ore-tin",
    --category = "ore-tin",
    icon = "__pyraworesgraphics__/graphics/icons/ores/ore-tin.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    minable = {
        -- mining_particle = "tin-ore-particle",
        mining_time = 1,
        results = {
            {"ore-tin", 1}
        },
        fluid_amount = 100,
        required_fluid = "steam"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "ore-tin",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = true,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/tin/tin.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyraworesgraphics__/graphics/entity/ores/tin/hr-tin.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}
