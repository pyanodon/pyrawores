data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "chromium-rock",
    richness = true,
    order = "r-ch"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "chromium-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_chromium-rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_chromium-rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_chromium-rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_chromium-rock_starting_area * py_chromium-rock_desired_frequency * var("control-setting:chromium-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_chromium-rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:chromium-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "chromium-rock",
    category = "chromium-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/chromium-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.784, g = 0.231, b = 0},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "chromium-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "ore-chromium", amount = 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "chromium-rock",
        order = "b-chromium-rock",
        control = "chromium-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_chromium-rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_chromium-rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/chromium/chromium-mine-place.png",
            priority = "extra-high",
            width = 292,
            height = 210,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
