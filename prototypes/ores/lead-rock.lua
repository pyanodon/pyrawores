data.raw.planet.nauvis.map_gen_settings.autoplace_controls["lead-rock"] = {}

data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "lead-rock",
    richness = true,
    order = "r-le"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "lead-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_lead_rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_lead_rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_lead_rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_lead_rock_starting_area * py_lead_rock_desired_frequency * var("control-setting:lead-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_lead_rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:lead-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "lead-rock",
    category = "lead-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/lead-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.349, g = 0.368, b = 0.368},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "lead-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "ore-lead", amount = 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "lead-rock",
        order = "b-lead-rock",
        control = "lead-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_lead_rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_lead_rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/lead/lead-mine-place.png",
            priority = "extra-high",
            width = 357,
            height = 384,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
