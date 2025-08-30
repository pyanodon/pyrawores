local resource_autoplace = require("resource-autoplace")

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["ore-nickel"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["ore-nickel"] = {}

data:extend({ {
    type = "autoplace-control",
    category = "resource",
    name = "ore-nickel",
    richness = true,
    order = "p-nick"
} })

-- data:extend{{
--     type = "noise-layer",
--     name = "ore-nickel"
-- }}

ENTITY({
    type = "resource",
    name = "ore-nickel",
    --category = "ore-nickel",
    icon = "__pyraworesgraphics__/graphics/icons/ore-nickel.png",
    icon_size = 32,
    flags = { "placeable-neutral" },
    order = "a-b-a",
    map_color = { r = 0.164, g = 0.388, b = 0.192 },
    minable = {
        -- mining_particle = "nickel-ore-particle",
        mining_time = 2,
        results = {
            { type = "item", name = "ore-nickel", amount = 1 }
        },
        fluid_amount = 40,
        required_fluid = "syngas"
    },
    collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings({
        name = "ore-nickel",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    }),
    stage_counts = { 20000, 13000, 10000, 5000, 3000, 1000, 500, 100 },
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/nickel/nickel.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
        }
    }
})
