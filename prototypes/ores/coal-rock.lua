DATA {
    type = "autoplace-control",
    category = "resource",
    name = "coal-rock",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "coal-rock"
}

DATA {
    type = "resource",
    name = "coal-rock",
    category = "coal-rock",
    icon = "__pyrawores__/graphics/icons/ores/coal-rock.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.0, g = 0.0, b = 0.0},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = true,
    minable = {
        hardness = 1.0,
        -- mining_particle = "coal-rock-particle",
        mining_time = 2,
        results = {
            {"raw-coal", 1}
        },
        fluid_amount = 30,
        required_fluid = "diesel"
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    starting_area_size = 0,
    starting_area_amount = 1,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    autoplace = {
        control = "coal-rock",
        sharpness = 2,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 400000,
        coverage = 0.000002,
        peaks = {
            {
                noise_layer = "coal-rock",
                noise_octaves_difference = -2.85,
                noise_persistence = 0.4
            },
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/coal/coal-rock.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
