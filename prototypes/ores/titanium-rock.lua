data.raw.planet.nauvis.map_gen_settings.autoplace_controls["titanium-rock"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["titanium-rock"] = {}

data:extend({ {
    type = "autoplace-control",
    category = "resource",
    name = "titanium-rock",
    richness = true,
    order = "r-tit"
} })

-- data:extend{{
--     type = "noise-layer",
--     name = "titanium-rock"
-- }}

data:extend({
    {
        type = "noise-expression",
        name = "py_titanium_rock_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_titanium_rock_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (64 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_titanium_rock",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_titanium_rock_starting_area * py_titanium_rock_desired_frequency * var("control:titanium-rock:frequency")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_titanium_rock_richness",
        expression = "2^16 * var('distance') * var('control:titanium-rock:richness')"
    }
})

data:extend({ {
    type = "resource",
    name = "titanium-rock",
    category = "titanium-rock",
    icon = "__pyraworesgraphics__/graphics/icons/ores/titanium-rock.png",
    icon_size = 32,
    flags = { "placeable-neutral" },
    order = "a-b-a",
    map_color = { r = 0.713, g = 0.643, b = 0.733 },
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "titanium-rock-particle",
        mining_time = 1,
        results = {
            { type = "item", name = "ore-titanium", amount = 1 }
        }
    },
    resource_patch_search_radius = 12,
    collision_box = { { -11.45, -11.45 }, { 11.45, 11.45 } },
    selection_box = { { -11.5, -11.5 }, { 11.5, 11.5 } },
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "titanium-rock",
        order = "b-titanium-rock",
        control = "titanium-rock",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_titanium_rock",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_titanium_rock_richness"
    },
    stage_counts = { 0 },
    stages = {
        sheet = {
            filename = "__pyraworesgraphics__/graphics/entity/ores/titanium/titanium-mine-place.png",
            priority = "extra-high",
            width = 736,
            height = 672,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
} })
