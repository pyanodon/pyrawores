RECIPE {
    type = 'recipe',
    name = 'leaching-station-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'storage-tank', amount = 3},
        {type = "item", name = 'steel-plate', amount = 15},
        {type = "item", name = 'distilator', amount = 1},
        {type = "item", name = 'pipe', amount = 10},
        {type = "item", name = 'electronic-circuit', amount = 5},
    },
    results = {
        {type = "item", name = 'leaching-station-mk01', amount = 1}
    }
}:add_unlock('machines-mk02')

RECIPE {
    type = 'recipe',
    name = 'leaching-station-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'leaching-station-mk01', 1},
        {'storage-tank',          3},
        {'duralumin',             15},
        {'engine-unit',           5},
        {'lead-plate',            10},
        {'nexelit-plate',         15},
        {'advanced-circuit',      10},
    },
    results = {
        {'leaching-station-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'leaching-station-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'leaching-station-mk02', 1},
        {'storage-tank',          3},
        {'duralumin',             15},
        {'lead-plate',            10},
        {'nexelit-plate',         15},
        {'electric-engine-unit',  4},
        {'processing-unit',       10},
    },
    results = {
        {'leaching-station-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'leaching-station-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'leaching-station-mk03', 1},
        {'storage-tank',          3},
        {'concrete',              20},
        {'super-steel',           30},
        {'low-density-structure', 15},
        {'nbfe-alloy',            20},
    },
    results = {
        {'leaching-station-mk04', 1}
    }
}:add_unlock('machines-mk05')

for i = 1, 4 do
    local name = 'leaching-station-mk0' .. i
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
        fast_replaceable_group = 'leaching-station',
        max_health = 300 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        module_slots = i,
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'leaching'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (400 * i) .. 'kW',
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(0, -5),
                    west_position = util.by_pixel(0, -5),
                    south_position = util.by_pixel(0, -5),
                    east_position = util.by_pixel(0, -5),
                    animation = {
                        filename = '__pyraworesgraphics__/graphics/entity/leaching-station/on-mk0' .. i .. '.png',
                        frame_count = 1,
                        width = 224,
                        height = 233,
                        --animation_speed = 0.4
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/leaching-station/off-mk0' .. i .. '.png',
                        width = 224,
                        height = 233,
                        frame_count = 1,
                        shift = util.by_pixel(0, -5)
                    },
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
                pipe_connections = {{flow_direction = 'input', position = {-2.0, -3.2}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {2.0, 3.2}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {3.2, -2.0}, direction = defines.direction.east}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-3.2, 2.0}, direction = defines.direction.west}}
            },
            off_when_no_fluid_recipe = false
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/leaching-station.ogg', volume = 0.8},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/leaching-station.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end