data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "nexelit-rock",
    richness = true,
    order = "r-ne"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "nexelit-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_nexelit-rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_nexelit-rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_nexelit-rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_nexelit-rock_starting_area * py_nexelit-rock_desired_frequency * var("control-setting:nexelit-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_nexelit-rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:nexelit-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "nexelit-rock",
    category = "nexelit-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/nexelit-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0, g = 0.545, b = 0.733},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "nexelit-rock-particle",
        mining_time = 1,
        results = {
            {"nexelit-ore", 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "nexelit-rock",
        order = "b-nexelit-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_nexelit-rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_nexelit-rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/nexelit/nexelit-mine-place.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
