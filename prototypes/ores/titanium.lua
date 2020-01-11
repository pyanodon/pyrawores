DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-titanium",
    richness = true,
    order = "b-e"
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
        hardness = 1,
        -- mining_particle = "titanium-ore-particle",
        mining_time = 2,
        results = {
            {"ore-titanium", 1}
        },
        fluid_amount = 40,
        required_fluid = "acetylene"
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "ore-titanium",
        sharpness = 1,
        starting_area = true,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 300,
        coverage = 0.004,
        peaks = {
            {
                noise_layer = "ore-titanium",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3
            }
        }
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
