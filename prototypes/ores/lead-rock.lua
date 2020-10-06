local resource_autoplace = require("resource-autoplace")

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "lead-rock",
    richness = true,
    order = "r-le"
}

DATA {
    type = "noise-layer",
    name = "lead-rock"
}

DATA {
    type = "resource",
    name = "lead-rock",
    category = "lead-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/lead-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.349, g = 0.368, b = 0.368},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "lead-rock-particle",
        mining_time = 1,
        results = {
            {"ore-lead", 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "lead-rock",
        order = "b",
        base_density = 3,
        base_spots_per_km2 = 1.25,
        random_probability = 1 / 48,
        has_starting_area_placement = false,
        random_spot_size_minimum = 1,
        random_spot_size_maximum = 2,
        additional_richness = 10000,
        regular_rq_factor_multiplier = 1
        --starting_rq_factor_multiplier = 2,
        --candidate_spot_count = 20
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/lead/lead-mine-place.png",
            priority = "extra-high",
            width = 357,
            height = 384,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
