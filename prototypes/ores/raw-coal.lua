local resource_autoplace = require 'resource-autoplace'

data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "raw-coal",
    richness = true,
    order = "p-raw"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "raw-coal"
-- }}

ENTITY {
    type = "resource",
    name = "raw-coal",
    --category = "borax",
    icon = "__pyraworesgraphics__/graphics/icons/ores/raw-coal.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.0, g = 0.0, b = 0.0},
    minable = {
        -- mining_particle = "raw-coal-ore-particle",
        mining_time = 0.5,
        results = {
            {type = "item", name = "raw-coal", amount = 1}
        }
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "raw-coal",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        --random_probability = 1 / 48,
        has_starting_area_placement = true,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        additional_richness = 10000,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/coal/hr-coal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
        }
    }
}
