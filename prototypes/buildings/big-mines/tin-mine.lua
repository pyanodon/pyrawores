RECIPE {
    type = 'recipe',
    name = 'tin-mine',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'automated-factory-mk01', amount = 2},
        {type = "item", name = 'electric-mining-drill', amount = 20},
        {type = "item", name = 'stainless-steel', amount = 50},
        {type = "item", name = 'nexelit-plate', amount = 50},
        {type = "item", name = 'tin-plate', amount = 50},
        {type = "item", name = 'advanced-circuit', amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = 'tin-mine', amount = 1}
    }
}:add_unlock('big-mines')

ITEM {
    type = 'item',
    name = 'tin-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-tin.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-rawores-mines',
    order = 'a',
    place_result = 'tin-mine',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'tin-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-tin.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'tin-mine'},
    fast_replaceable_group = 'tin-mine',
    max_health = 600,
    resource_categories = {'tin-rock'},
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_specification = {
        module_slots = 1
    },
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
        fuel_category = 'drill',
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
    circuit_wire_connection_points = circuit_connector_definitions['tin-mine'].points,
    circuit_connector_sprites = circuit_connector_definitions['tin-mine'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/1.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-176, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/2.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/3.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-48, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/4.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/5.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(80, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/6.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(144, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/7.png',
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(176, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h1.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-166, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h2.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-102, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h3.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-38, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h4.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(26, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h5.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(90, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h6.png',
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(154, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/tin-mine/h7.png',
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(200, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyraworesgraphics__/sounds/tin-mine.ogg', volume = 1.1},
        idle_sound = {filename = '__pyraworesgraphics__/sounds/tin-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
