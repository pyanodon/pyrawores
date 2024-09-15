RECIPE {
    type = 'recipe',
    name = 'flotation-cell-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'steam-engine',       4},
        {'steel-plate',        10},
        {'lab',                1},
        {'electronic-circuit', 3},
    },
    results = {
        {'flotation-cell-mk01', 1}
    }
}:add_unlock('machines-mk01')

RECIPE {
    type = 'recipe',
    name = 'flotation-cell-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'flotation-cell-mk01', 1},
        {'duralumin',           15},
        {'lead-plate',          10},
        {'storage-tank',        1},
        {'engine-unit',         5},
        {'nexelit-plate',       15},
        {'advanced-circuit',    10},
    },
    results = {
        {'flotation-cell-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'flotation-cell-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'flotation-cell-mk02',  1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'storage-tank',         1},
        {'tin-plate',            20},
        {'electric-engine-unit', 5},
        {'processing-unit',      10}
    },
    results = {
        {'flotation-cell-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'flotation-cell-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'flotation-cell-mk03',   1},
        {'concrete',              15},
        {'super-steel',           30},
        {'storage-tank',          1},
        {'low-density-structure', 10},
        {'nbfe-alloy',            10},
    },
    results = {
        {'flotation-cell-mk04', 1}
    }
}:add_unlock('machines-mk05')

for i = 1, 4 do
    local name = 'flotation-cell-mk0' .. i
    local icon = '__pyraworesgraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 32

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-rawores-buildings-mk0' .. i,
        order = 'e',
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
        fast_replaceable_group = 'flotation-cell',
        max_health = 400 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = i
        },
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'flotation'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = i * 0.06,
        },
        energy_usage = (1.5 * i) .. 'MW',
        animation = {
            layers = {
                {
                    filename = '__pyraworesgraphics__/graphics/entity/flotation-cell/off.png',
                    width = 192,
                    height = 229,
                    frame_count = 1,
                    shift = util.by_pixel(-1, -19)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/flotation-cell/off-mask.png',
                    width = 192,
                    height = 229,
                    frame_count = 1,
                    shift = util.by_pixel(-1, -19),
                    tint = py.tints[i]
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/flotation-cell/sh.png',
                    width = 143,
                    height = 172,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = util.by_pixel(42, 10)
                }
            }
        },
        working_visualisations = {
            {
                fadeout = true,
                constant_speed = true,
                north_position = util.by_pixel(-1, -17.5),
                west_position = util.by_pixel(-1, -17.5),
                south_position = util.by_pixel(-1, -17.5),
                east_position = util.by_pixel(-1, -17.5),
                animation = {
                    layers = {
                        {
                            filename = '__pyraworesgraphics__/graphics/entity/flotation-cell/flotation-cell.png',
                            frame_count = 100,
                            line_length = 10,
                            width = 192,
                            height = 160,
                            animation_speed = 1
                        },
                        {
                            filename = '__pyraworesgraphics__/graphics/entity/flotation-cell/flotation-cell-mask.png',
                            frame_count = 100,
                            line_length = 10,
                            width = 192,
                            height = 160,
                            animation_speed = 1,
                            tint = py.tints[i]
                        },
                    }
                }
            }
        },
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-2.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-0.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {1.5, -2.7}, direction = defines.direction.north}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{flow_direction = 'output', position = {-0.5, 2.7}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{flow_direction = 'output', position = {-2.5, 2.7}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{flow_direction = 'output', position = {1.5, 2.7}, direction = defines.direction.south}}
            },
            off_when_no_fluid_recipe = false
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/flotation-cell.ogg', volume = 1.0},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/flotation-cell.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end