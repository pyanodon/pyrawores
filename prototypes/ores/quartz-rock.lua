data.raw.planet.nauvis.map_gen_settings.autoplace_controls["quartz-rock"] = {}

data:extend{{
    type = "autoplace-control",
    category = "resource",
    name = "quartz-rock",
    richness = true,
    order = "r-qu"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "quartz-rock"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_quartz_rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_quartz_rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_quartz_rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_quartz_rock_starting_area * py_quartz_rock_desired_frequency * var("control-setting:quartz-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_quartz_rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:quartz-rock:richness:multiplier')"
    }
}

data:extend{{
    type = "resource",
    name = "quartz-rock",
    category = "quartz-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/quartz-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.670, g = 0.792, b = 0.913},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "quartz-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "ore-quartz", amount = 1}
        },
        fluid_amount = 30,
        required_fluid = (mods["pyfusionenergy"] and "acetylene" or "diesel")
    },
    resource_patch_search_radius = 12,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "quartz-rock",
        order = "b-quartz-rock",
        control = "quartz-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_quartz_rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_quartz_rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/quartz/quartz-mine-place.png",
            priority = "extra-high",
            width = 424,
            height = 446,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(3, -10)
        }
    }
}}
