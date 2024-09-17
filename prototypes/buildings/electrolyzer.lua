RECIPE {
    type = 'recipe',
    name = 'electrolyzer-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'lab', amount = 2},
        {type = "item", name = 'aluminium-plate', amount = 30},
        {type = "item", name = 'tar-processing-unit', amount = 1},
        {type = "item", name = 'steam-engine', amount = 3},
        {type = "item", name = 'electronic-circuit', amount = 5},
    },
    results = {
        {type = "item", name = 'electrolyzer-mk01', amount = 1}
    }
}:add_unlock('electrolysis')

RECIPE {
    type = 'recipe',
    name = 'electrolyzer-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'electrolyzer-mk01', 1},
        {'duralumin',         20},
        {'engine-unit',       5},
        {'nexelit-plate',     15},
        {'advanced-circuit',  10},
    },
    results = {
        {'electrolyzer-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'electrolyzer-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'electrolyzer-mk02',    1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'tin-plate',            20},
        {'electric-engine-unit', 10},
        {'processing-unit',      10}
    },
    results = {
        {'electrolyzer-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'electrolyzer-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'electrolyzer-mk03',     1},
        {'concrete',              20},
        {'super-steel',           30},
        {'low-density-structure', 15},
        {'nbfe-alloy',            20},
    },
    results = {
        {'electrolyzer-mk04', 1}
    }
}:add_unlock('machines-mk05')


for i = 1, 4 do
    local name = 'electrolyzer-mk0' .. i
    local icon = '__pyraworesgraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 32

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-rawores-buildings-mk0' .. i,
        order = 'd',
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = 'assembling-machine',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {'placeable-neutral', 'player-creation'},
        minable = {mining_time = 1, result = name},
        fast_replaceable_group = 'electrolyzer',
        max_health = 600 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = i
        },
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'electrolyzer'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (10 * i) .. 'MW',
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(-14.5, -16),
                    west_position = util.by_pixel(-14.5, -16),
                    south_position = util.by_pixel(-14.5, -16),
                    east_position = util.by_pixel(-14.5, -16),
                    animation = {
                        filename = '__pyraworesgraphics__/graphics/entity/electrolyzer/on-mk0' .. i .. '.png',
                        priority = 'high',
                        frame_count = 60,
                        line_length = 10,
                        width = 160,
                        height = 160,
                        animation_speed = 1.5
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/electrolyzer/off-mk0' .. i .. '.png',
                        width = 189,
                        height = 192,
                        frame_count = 1,
                        shift = util.by_pixel(0, 0)
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/electrolyzer/shadow.png',
                        width = 29,
                        height = 192,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(94, 0)
                    }
                }
            },
        },
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-2.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-0.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {1.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-0.5, 2.7}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-2.5, 2.7}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {1.5, 2.7}, direction = defines.direction.south}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/electrolyzer.ogg', volume = 0.8},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/electrolyzer.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end