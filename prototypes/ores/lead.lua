DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-lead",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "ore-lead"
}

ENTITY {
    type = "resource",
    name = "ore-lead",
    --category = "ore-lead",
    icon = "__pyraworesgraphics__/graphics/icons/ore-lead.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.2, g = 0.2, b = 0.2},
    minable = {
        hardness = 1,
        -- mining_particle = "lead-ore-particle",
        mining_time = 2,
        results = {
            {"ore-lead", 1}
        },
        fluid_amount = 100,
        required_fluid = "acetylene"
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "ore-lead",
        sharpness = 1,
        starting_area = true,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 300,
        coverage = 0.0026,
        peaks = {
            {
                noise_layer = "ore-lead",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.3
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/lead/lead.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyraworesgraphics__/graphics/entity/ores/lead/hr-lead.png",
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
