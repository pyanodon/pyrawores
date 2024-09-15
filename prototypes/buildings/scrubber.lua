RECIPE {
    type = 'recipe',
    name = 'scrubber-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'steam-engine',        3},
        {'soil-extractor-mk01', 1},
        {'stone-brick',         20},
        {'electronic-circuit',  15},
    },
    results = {
        {'scrubber-mk01', 1}
    }
}:add_unlock('machines-mk01')

RECIPE {
    type = 'recipe',
    name = 'scrubber-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'scrubber-mk01',    1},
        {'duralumin',        15},
        {'lead-plate',       10},
        {'nexelit-plate',    15},
        {'engine-unit',      10},
        {'advanced-circuit', 10},
    },
    results = {
        {'scrubber-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'scrubber-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'scrubber-mk02',        1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'tin-plate',            20},
        {'electric-engine-unit', 10},
        {'processing-unit',      10}
    },
    results = {
        {'scrubber-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'scrubber-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'scrubber-mk03',         1},
        {'super-steel',           30},
        {'low-density-structure', 15},
        {'nbfe-alloy',            20},
    },
    results = {
        {'scrubber-mk04', 1}
    }
}:add_unlock('machines-mk05')

for i = 1, 4 do
    local name = 'scrubber-mk0' .. i
    local icon = '__pyraworesgraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 32

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-rawores-buildings-mk0' .. i,
        order = 'g',
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
        fast_replaceable_group = 'scrubber',
        max_health = 300 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = i
        },
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'scrubber'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = 0.06 * i,
        },
        energy_usage = (300 * i) .. 'kW',
        animation = {
            layers = {
                {
                    filename = '__pyraworesgraphics__/graphics/entity/scrubber/scrubber-mk0' .. i .. '.png',
                    width = 224,
                    height = 317,
                    line_length = 9,
                    frame_count = 50,
                    animation_speed = 1,
                    shift = util.by_pixel(0, -47)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/scrubber/sh.png',
                    width = 157,
                    height = 192,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(64, 16)
                }
            }
        },
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-2.0, -3.3}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-0.0, -3.3}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {2.0, -3.3}, direction = defines.direction.north}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-0.0, 3.3}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-2.0, 3.3}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {2.0, 3.3}, direction = defines.direction.south}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/scrubber.ogg', volume = 2.0},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/scrubber.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end