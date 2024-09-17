RECIPE {
    type = 'recipe',
    name = 'impact-crusher-mk01',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'electric-mining-drill', amount = 2},
        {type = "item", name = 'iron-plate', amount = 30},
        {type = "item", name = 'radar', amount = 2},
        {type = "item", name = 'tinned-cable', amount = 20},
        {type = "item", name = 'steam-engine', amount = 6},
        {type = "item", name = 'electronic-circuit', amount = 5},
    },
    results = {
        {type = "item", name = 'impact-crusher-mk01', amount = 1}
    }
}:add_unlock('machines-mk01')

RECIPE {
    type = 'recipe',
    name = 'impact-crusher-mk02',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'impact-crusher-mk01', 1},
        {'duralumin',           15},
        {'lead-plate',          10},
        {'nexelit-plate',       10},
        {'engine-unit',         6},
        {'advanced-circuit',    20},
    },
    results = {
        {'impact-crusher-mk02', 1}
    }
}:add_unlock('machines-mk03')

RECIPE {
    type = 'recipe',
    name = 'impact-crusher-mk03',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'impact-crusher-mk02',  1},
        {'titanium-plate',       20},
        {'stainless-steel',      20},
        {'tin-plate',            20},
        {'electric-engine-unit', 12},
        {'processing-unit',      10}
    },
    results = {
        {'impact-crusher-mk03', 1}
    }
}:add_unlock('machines-mk04')

RECIPE {
    type = 'recipe',
    name = 'impact-crusher-mk04',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'impact-crusher-mk03',   1},
        {'super-steel',           30},
        {'low-density-structure', 15},
        {'nbfe-alloy',            20},
    },
    results = {
        {'impact-crusher-mk04', 1}
    }
}:add_unlock('machines-mk05')

for i = 1, 4 do
    local name = 'impact-crusher-mk0' .. i
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
        fast_replaceable_group = 'impact-crusher',
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
        crafting_categories = {'impact-crusher'},
        crafting_speed = i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = {
                pollution = i * 0.06
            },
        },
        energy_usage = (300 * i) .. 'kW',
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    animation = {
                        layers = {
                            {
                                filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/left.png',
                                priority = 'high',
                                frame_count = 99,
                                line_length = 20,
                                width = 96,
                                height = 224,
                                animation_speed = 2.0,
                                shift = util.by_pixel(-48, -16)
                            },
                            {
                                filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/left-mask.png',
                                priority = 'high',
                                frame_count = 99,
                                line_length = 20,
                                width = 96,
                                height = 224,
                                animation_speed = 2.0,
                                shift = util.by_pixel(-48, -16),
                                tint = py.tints[i],
                            },
                            {
                                filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/right.png',
                                priority = 'high',
                                frame_count = 99,
                                line_length = 20,
                                width = 96,
                                height = 224,
                                animation_speed = 2.0,
                                shift = util.by_pixel(48, -16)
                            },
                            {
                                filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/right-mask.png',
                                priority = 'high',
                                frame_count = 99,
                                line_length = 20,
                                width = 96,
                                height = 224,
                                animation_speed = 2.0,
                                shift = util.by_pixel(48, -16),
                                tint = py.tints[i],
                            }
                        }
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/off.png',
                        width = 192,
                        height = 224,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16)
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/off-mask.png',
                        width = 192,
                        height = 224,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16),
                        tint = py.tints[i],
                    },
                    {
                        filename = '__pyraworesgraphics__/graphics/entity/impact-crusher/shadow.png',
                        width = 202,
                        height = 170,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(8, 10)
                    }
                }
            },
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pyraworesgraphics__/sounds/impact-crusher.ogg', volume = 1.0},
            idle_sound = {filename = '__pyraworesgraphics__/sounds/impact-crusher.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end