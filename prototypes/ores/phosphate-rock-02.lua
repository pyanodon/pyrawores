local noise = require("noise")

DATA {
    type = "autoplace-control",
    category = "resource",
    name = "phosphate-rock-02",
    richness = true,
    order = "r-pho-b"
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
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "phosphate-rock-02",
        order = "b-phosphate-rock-02",
        -- We return the chance of spawning on any given tile here
        probability_expression = noise.define_noise_function( function(x, y, tile, map)
            -- This is the user's map setting for the frequency of this ore
            local frequency_multiplier = noise.var("control-setting:phosphate-rock-02:frequency:multiplier")
            -- 0% chance of spawning in starting area (tier == 0)
            -- Using this is equivalent to has_starting_area_placement = false
            local tier = noise.clamp(noise.var("tier"), 0, 1)
            -- 1 in 64 chunks (each chunk is 64x64 tiles)
            local desired_frequency = 1 / (64 * 64^2)
            -- Our final chance, likely a very, very small decimal
            return tier * desired_frequency * frequency_multiplier
          end),
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = noise.define_noise_function( function(x, y, tile, map)
            -- This is the user's map setting for richness of this ore
            -- We ignore size here because we're always a single tile resource
            local richness_multiplier = noise.var("control-setting:phosphate-rock-02:richness:multiplier")
            -- This is the distance from the starting position, which is how vanilla scales ore yield
            local distance_value = noise.var("distance")
            -- This is our multiplier for the above, determining the yield gains over distance
            local scalar = 2^16
            -- Add it all together or what is likely a pretty big number
            return distance_value * scalar * richness_multiplier
        end)
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
