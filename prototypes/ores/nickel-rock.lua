data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "nickel-rock",
    richness = true,
    order = "r-ni"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "nickel-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_nickel-rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_nickel-rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_nickel-rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_nickel-rock_starting_area * py_nickel-rock_desired_frequency * var("control-setting:nickel-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_nickel-rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:nickel-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "nickel-rock",
    category = "nickel-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/nickel-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.164, g = 0.388, b = 0.192},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "nickel-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "ore-nickel", amount = 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "nickel-rock",
        order = "b-nickel-rock",
        control = "nickel-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_nickel-rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_nickel-rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/nickel/nickel-mine-place.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
