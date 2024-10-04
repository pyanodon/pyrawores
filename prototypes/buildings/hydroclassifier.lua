RECIPE {
    type = 'recipe',
    name = 'hydroclassifier-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'electric-mining-drill', amount = 1},
        {type = "item", name = 'flotation-cell-mk01', amount = 1},
        {type = "item", name = 'steel-plate', amount = 20},
        {type = "item", name = 'iron-plate', amount = 15},
        {type = "item", name = 'electronic-circuit', amount = 20},
    },
    results = {
        {type = "item", name = 'hydroclassifier-mk01', amount = 1}
    }
}:add_unlock('machines-mk01')

RECIPE {
    type = 'recipe',
    name = 'hydroclassifier-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'hydroclassifier-mk01', 1},
        {'duralumin',            20},
        {'engine-unit',          3},
        {'nexelit-plate',        15},
        {'advanced-circuit',     10},
    },
    results = {
        {'hydroclassifier-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'hydroclassifier-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'hydroclassifier-mk02', 1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'electric-engine-unit', 6},
        {'tin-plate',            20},
        {'processing-unit',      10}
    },
    results = {
        {'hydroclassifier-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'hydroclassifier-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'hydroclassifier-mk03',  1},
        {'concrete',              20},
        {'super-steel',           30},
        {'low-density-structure', 15},
        {'nbfe-alloy',            20},
    },
    results = {
        {'hydroclassifier-mk04', 1}
    }
}:add_unlock('machines-mk05')

for i = 1, 4 do
    local name = 'hydroclassifier-mk0' .. i
    local icon = '__pyraworesgraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 32

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-rawores-buildings-mk0' .. i,
        order = 'f',
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
        fast_replaceable_group = 'hydroclassifier',
        max_health = 500 * i,
        corpse = 'medium-remnants',
        dying_explosion = 'big-explosion',
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_slots = i,
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'hydroclassifier'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (500 * i) .. 'kW',
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h1.png',
                        width = 96,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(-63, -2)
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h2.png',
                        width = 96,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(31, -2)
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h3.png',
                        width = 32,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(95, -2)
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h1-mask.png',
                        width = 96,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(-63, -2),
                        tint = py.tints[i],
                        draw_as_glow = true,
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h2-mask.png',
                        width = 96,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(31, -2),
                        tint = py.tints[i],
                        draw_as_glow = true,
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/h3-mask.png',
                        width = 32,
                        height = 227,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        shift = util.by_pixel(95, -2),
                        tint = py.tints[i],
                        draw_as_glow = true,
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/hydroclassifier/shadow.png',
                        width = 96,
                        height = 222,
                        line_length = 21,
                        frame_count = 150,
                        animation_speed = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(79, -2)
                    }
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {-2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {0.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = 'input', position = {2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {0.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {-2.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = 'output',
                pipe_picture = py.pipe_pictures('assembling-machine-2', nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = 'output', position = {2.0, 3.0}, direction = defines.direction.south}}
            },
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/flotation-cell.ogg', volume = 1.0},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/flotation-cell.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end