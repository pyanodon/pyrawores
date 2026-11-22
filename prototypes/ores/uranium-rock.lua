data.raw.planet.nauvis.map_gen_settings.autoplace_controls["uranium-rock"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["uranium-rock"] = {}

data:extend {{
    type = "autoplace-control",
    category = "resource",
    name = "uranium-rock",
    richness = true,
    order = "r-ur"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "uranium-rock"
-- }}

data:extend {
    {
        type = "noise-expression",
        name = "py_uranium_rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_uranium_rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_uranium_rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_uranium_rock_starting_area * py_uranium_rock_desired_frequency * var("control:uranium-rock:frequency")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_uranium_rock_richness",
        expression = "2^16 * var('distance') * var('control:uranium-rock:richness')"
    }
}

data:extend {{
    type = "resource",
    name = "uranium-rock",
    category = "uranium-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/uranium-rock.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.4, g = 1, b = 0.4},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "uranium-rock-particle",
        mining_time = 1,
        results = {
            {type = "item", name = "uranium-ore", amount = 1}
        },
        fluid_amount = 10,
        required_fluid = ("gasoline")
    },
    resource_patch_search_radius = 12,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "uranium-rock",
        order = "b-uranium-rock",
        control = "uranium-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_uranium_rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_uranium_rock_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/uranium/uranium-mine-place.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}}
