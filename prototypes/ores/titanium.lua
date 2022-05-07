local resource_autoplace = require("resource-autoplace")

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-titanium",
    richness = true,
    order = "p-tit"
}

DATA {
    type = "noise-layer",
    name = "ore-titanium"
}

ENTITY {
    type = "resource",
    name = "ore-titanium",
    --category = "ore-titanium",
    icon = "__pyraworesgraphics__/graphics/icons/ore-titanium.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.713, g = 0.643, b = 0.733},
    minable = {
        -- mining_particle = "titanium-ore-particle",
        mining_time = 2,
        results = {
            {"ore-titanium", 1}
        },
        fluid_amount = 40,
        required_fluid = (mods["pyfusionenergy"] and "acetylene" or "syngas")
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "ore-titanium",
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
    stage_counts = {1000, 800, 700, 600, 400, 200, 100, 20},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/titanium/titanium.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyraworesgraphics__/graphics/entity/ores/titanium/hr-titanium.png",
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
