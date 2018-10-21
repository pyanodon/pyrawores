DATA {
    type = "autoplace-control",
    category = "resource",
    name = "quartz-rock",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "quartz-rock"
}

DATA {
    type = "resource",
    name = "quartz-rock",
    category = "quartz-rock",
    icon = "__pyrawores__/graphics/icons/ores/quartz-rock.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.670, g = 0.792, b = 0.913},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = false,
    minable = {
        hardness = 1.0,
        -- mining_particle = "quartz-rock-particle",
        mining_time = 2,
        results = {
            {"ore-quartz", 1}
        },
        fluid_amount = 30,
        required_fluid = "diesel"
    },
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    autoplace = {
        control = "quartz-rock",
        sharpness = 1,
        starting_area = false,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 5000000,
        coverage = 0.000015,
        peaks = {
            {
                noise_layer = "quartz-rock",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.4
            }
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/quartz/quartz-mine-place.png",
            priority = "extra-high",
            width = 424,
            height = 446,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(3, -10)
        }
    }
}
