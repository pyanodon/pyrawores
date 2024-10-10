data.raw.planet.nauvis.map_gen_settings.autoplace_controls["salt-rock"] = {}

data:extend {{
    type = "autoplace-control",
    category = "resource",
    name = "salt-rock",
    richness = true,
    order = "r-su"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "salt-rock"
-- }}

data:extend {
    {
        type = "noise-expression",
        name = "py_salt_rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_salt_rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (48 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_salt_rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_salt_rock_starting_area * py_salt_rock_desired_frequency * var("control-setting:salt-rock:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_salt_rock_richness",
        expression = "2^16 * var('distance') * var('control-setting:salt-rock:richness:multiplier')"
    }
}

data:extend {{
    type = "resource",
    name = "salt-rock",
    category = "salt-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/salt-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.8, g = 0.8, b = 0.8},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "salt-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "salt", amount = 1}
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "salt-rock",
        order = "b-salt-rock",
        control = "salt-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_salt_rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_salt_rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/salt/salt-rock.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
