RECIPE {
    type = 'recipe',
    name = 'casting-unit-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'steam-engine', 2},
        {'steel-plate',  15},
        {'copper-plate', 20},
        {'radar',        1}, --pyindustry local radar
        {'lab',          1},
    },
    results = {
        {'casting-unit-mk01', 1}
    }
}:add_unlock('casting-mk01')

RECIPE {
    type = 'recipe',
    name = 'casting-unit-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'casting-unit-mk01', 1},
        {'duralumin',         15},
        {'engine-unit',       15},
        {'lead-plate',        10},
        {'nexelit-plate',     15},
        {'advanced-circuit',  10},
    },
    results = {
        {'casting-unit-mk02', 1}
    }
}:add_unlock('casting-mk02')

RECIPE {
    type = 'recipe',
    name = 'casting-unit-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'casting-unit-mk02',    1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'storage-tank',         1},
        {'tin-plate',            20},
        {'electric-engine-unit', 10},
        {'processing-unit',      10}
    },
    results = {
        {'casting-unit-mk03', 1}
    }
}:add_unlock('casting-mk03')

RECIPE {
    type = 'recipe',
    name = 'casting-unit-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'casting-unit-mk03',     1},
        {'concrete',              15},
        {'super-steel',           30},
        {'storage-tank',          1},
        {'low-density-structure', 10},
        {'nbfe-alloy',            10},
    },
    results = {
        {'casting-unit-mk04', 1}
    }
}:add_unlock('casting-mk04')

for i = 1, 4 do
    local name = 'casting-unit-mk0' .. i
    local icon = '__pyraworesgraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 32
    
    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-rawores-buildings-mk0' .. i,
        order = 'b',
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
        fast_replaceable_group = 'casting-unit',
        max_health = 400 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = i
        },
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'casting'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = 0.06 * i,
        },
        energy_usage = (350 * i) .. 'kW',
        animation = {
            layers = {
                {
                    filename = '__pyraworesgraphics__/graphics/entity/casting-unit/off.png',
                    width = 238,
                    height = 234,
                    frame_count = 1,
                    shift = util.by_pixel(7, -5)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/casting-unit/off-mask.png',
                    width = 238,
                    height = 234,
                    frame_count = 1,
                    shift = util.by_pixel(7, -5),
                    tint = py.tints[i]
                },
            }
        },
        working_visualisations = {
            {
                fadeout = true,
                constant_speed = true,
                north_position = util.by_pixel(6.5, -5),
                west_position = util.by_pixel(6.5, -5),
                south_position = util.by_pixel(6.5, -5),
                east_position = util.by_pixel(6.5, -5),
                animation = {
                    layers = {
                        {
                            filename = '__pyraworesgraphics__/graphics/entity/casting-unit/on.png',
                            priority = 'high',
                            frame_count = 30,
                            line_length = 6,
                            width = 237,
                            height = 234,
                            animation_speed = 0.5
                        },
                        {
                            filename = '__pyraworesgraphics__/graphics/entity/casting-unit/on-mask.png',
                            priority = 'high',
                            frame_count = 30,
                            line_length = 6,
                            width = 237,
                            height = 234,
                            animation_speed = 0.5,
                            tint = py.tints[i]
                        },
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
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {0.0, -4.0}}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {-0.0, 4.0}}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {4.0, 0.0}}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {4.0, 2.0}}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                base_level = 1,
                pipe_connections = {{type = 'output', position = {-4.0, 0.0}}}
            },
            off_when_no_fluid_recipe = true
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/casting-unit.ogg', volume = 0.8},
            apparent_volume = 2.5
        }
    }
end