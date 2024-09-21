data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "tin-rock",
    richness = true,
    order = "r-tin"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "tin-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_tin-rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_tin-rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_tin-rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_tin-rock_starting_area * py_tin-rock_desired_frequency * var("control-setting:tin-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_tin-rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:tin-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "tin-rock",
    category = "tin-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/tin-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "tin-rock-particle",
        mining_time = 1,
        results = {
            {"ore-tin", 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "tin-rock",
        order = "b-tin-rock",
        control = "tin-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_tin-rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_tin-rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/tin/tin-mine-place.png",
            priority = "extra-high",
            width = 416,
            height = 416,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
