RECIPE {
    type = "recipe",
    name = "bof-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "boiler",             amount = 3},
        {type = "item", name = "washer",             amount = 1},
        {type = "item", name = "iron-plate",         amount = 15},
        {type = "item", name = "steam-engine",       amount = 1},
        {type = "item", name = "electronic-circuit", amount = 10},
    },
    results = {
        {type = "item", name = "bof-mk01", amount = 1}
    }
}:add_unlock("smelters-mk01")

RECIPE {
    type = "recipe",
    name = "bof-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "bof-mk01",         amount = 1},
        {type = "item", name = "duralumin",        amount = 15},
        {type = "item", name = "lead-plate",       amount = 10},
        {type = "item", name = "engine-unit",      amount = 5},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "advanced-circuit", amount = 10},
    },
    results = {
        {type = "item", name = "bof-mk02", amount = 1}
    }
}:add_unlock("smelters-mk02")

RECIPE {
    type = "recipe",
    name = "bof-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "bof-mk02",             amount = 1},
        {type = "item", name = "titanium-plate",       amount = 20},
        {type = "item", name = "super-steel",          amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 5},
        {type = "item", name = "glass",                amount = 20},
        {type = "item", name = "tin-plate",            amount = 20},
        {type = "item", name = "processing-unit",      amount = 10},
        {type = "item", name = "nbti-alloy",           amount = 20},
    },
    results = {
        {type = "item", name = "bof-mk03", amount = 1}
    }
}:add_unlock("smelters-mk03")

if mods.pyhightech then
    RECIPE("bof-mk03"):add_ingredient_unsafe {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient_unsafe {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient_unsafe {type = "item", name = "graphene-roll", amount = 15}
end

RECIPE {
    type = "recipe",
    name = "bof-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "bof-mk03",              amount = 1},
        {type = "item", name = "concrete",              amount = 15},
        {type = "item", name = "super-steel",           amount = 30},
        {type = "item", name = "glass",                 amount = 10},
        {type = "item", name = "low-density-structure", amount = 10},
        {type = "item", name = "nbfe-alloy",            amount = 10},
        {type = "item", name = "super-alloy",           amount = 10},
        {type = "item", name = "boron-carbide",         amount = 30},
        {type = "item", name = "science-coating",       amount = 1},
        {type = "item", name = "control-unit",          amount = 5},
    },
    results = {
        {type = "item", name = "bof-mk04", amount = 1}
    }
}:add_unlock("smelters-mk04")

if mods.pyhightech then
    RECIPE("bof-mk04"):replace_ingredient_unsafe("control-unit", "intelligent-unit"):add_ingredient_unsafe {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient_unsafe {type = "item", name = "harmonic-absorber", amount = 10}
end

for i = 1, 4 do
    local name = "bof-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 32

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "bof",
        max_health = 300 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"bof"},
        crafting_speed = i,
        energy_source = {
            light_flicker = {
                minimum_intensity = 0,
                maximum_intensity = 0,
                light_intensity_to_size_coefficient = 0,
                color = {0, 0, 0},
            },
            type = "burner",
            fuel_categories = {"chemical", "biomass"},
            effectivity = 1,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
            emissions_per_minute = {
                pollution = 0.12 * i
            },
            smoke = {
                {
                    name = "smoke",
                    north_position = {2.95, -5.0},
                    east_position = {2.95, -5.0},
                    west_position = {2.95, -5.0},
                    south_position = {2.95, -5.0},
                    frequency = 90,
                    starting_vertical_speed = 0.05,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                },
            },
        },
        energy_usage = (5 * i) .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(-15.5, -64),
                    west_position = util.by_pixel(-15.5, -64),
                    south_position = util.by_pixel(-15.5, -64),
                    east_position = util.by_pixel(-15.5, -64),
                    animation = {
                        filename = "__pyraworesgraphics__/graphics/entity/bof/on-mk0" .. i .. ".png",
                        priority = "high",
                        frame_count = 24,
                        line_length = 6,
                        width = 128,
                        height = 160,
                        animation_speed = 1.0
                    }
                },
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(-15.5, -64),
                    west_position = util.by_pixel(-15.5, -64),
                    south_position = util.by_pixel(-15.5, -64),
                    east_position = util.by_pixel(-15.5, -64),
                    animation = {
                        filename = "__pyraworesgraphics__/graphics/entity/bof/g.png",
                        priority = "high",
                        frame_count = 24,
                        line_length = 6,
                        width = 128,
                        height = 160,
                        draw_as_glow = true,
                        animation_speed = 1.0
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/bof/off-mk0" .. i .. ".png",
                        width = 256,
                        height = 288,
                        frame_count = 1,
                        shift = util.by_pixel(17, -32)
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {3.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-1.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-3.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-1.0, 3.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.8},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.02},
        }
    }
end
