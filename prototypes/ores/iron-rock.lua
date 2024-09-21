data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "iron-rock",
    richness = true,
    order = "r-ir"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "iron-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_iron-rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_iron-rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_iron-rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_iron-rock_starting_area * py_iron-rock_desired_frequency * var("control-setting:iron-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_iron-rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:iron-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "iron-rock",
    category = "iron-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/iron-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0, g = 0.043, b = 0.549},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "iron-rock-particle",
        mining_time = 1,
        results = {
            {"iron-ore", 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "iron-rock",
        order = "b-iron-rock",
        control = "iron-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_iron-rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_iron-rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/iron/iron-mine-place.png",
            priority = "extra-high",
            width = 416,
            height = 416,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
