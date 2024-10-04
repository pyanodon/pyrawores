RECIPE {
    type = 'recipe',
    name = 'quartz-mine',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'automated-factory-mk01', amount = 2},
        {type = "item", name = 'electric-mining-drill', amount = 20},
        {type = "item", name = 'stainless-steel', amount = 50},
        {type = "item", name = 'nexelit-plate', amount = 50},
        {type = "item", name = 'aramid', amount = 50},
        {type = "item", name = 'advanced-circuit', amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = 'quartz-mine', amount = 1}
    }
}:add_unlock('big-mines')

ITEM {
    type = 'item',
    name = 'quartz-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-quartz.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-rawores-mines',
    order = 'a',
    place_result = 'quartz-mine',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'quartz-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-quartz.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'quartz-mine'},
    fast_replaceable_group = 'quartz-mine',
    max_health = 600,
    resource_categories = {'quartz-rock'},
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    --match_animation_speed_to_activity = false,
    input_fluid_box = {
        production_type = 'input-output',
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        volume = 200,
        base_level = -1,
        pipe_connections = {
            {flow_direction = "input-output", position = {-6.0, -3}, direction = defines.direction.west},
        }
    },
    module_slots = 1,
    allowed_effects = {'consumption', 'speed', 'productivity'},
    mining_speed = 20,
    energy_source =
    {
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0},
        },
        type = 'burner',
        fuel_categories = {'drill'},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = '2500kW',
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions['quartz-mine'].points,
    circuit_connector_sprites = circuit_connector_definitions['quartz-mine'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h1.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-177, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h2.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-113, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h3.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-49, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h4.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(15, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h5.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(79, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h6.png',
                    width = 64,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(143, -12)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/quartz-mine/h7.png',
                    width = 40,
                    height = 446,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.3,
                    shift = util.by_pixel(195, -12)
                },
            }
        },
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyraworesgraphics__/sounds/quartz-mine.ogg', volume = 2.5},
        idle_sound = {filename = '__pyraworesgraphics__/sounds/quartz-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
