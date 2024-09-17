RECIPE {
    type = 'recipe',
    name = 'copper-mine',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'automated-factory-mk01', amount = 2},
        {type = "item", name = 'electric-mining-drill', amount = 20},
        {type = "item", name = 'stainless-steel', amount = 50},
        {type = "item", name = 'nexelit-plate', amount = 50},
        {type = "item", name = 'aramid', amount = 40},
        {type = "item", name = 'copper-plate', amount = 50},
        {type = "item", name = 'advanced-circuit', amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = 'copper-mine', amount = 1}
    }
}:add_unlock('big-mines')

ITEM {
    type = 'item',
    name = 'copper-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-copper.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-rawores-mines',
    order = 'a',
    place_result = 'copper-mine',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'copper-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-copper.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'copper-mine'},
    fast_replaceable_group = 'copper-mine',
    max_health = 600,
    resource_categories = {'copper-rock'},
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
    circuit_wire_connection_points = circuit_connector_definitions['copper-mine'].points,
    circuit_connector_sprites = circuit_connector_definitions['copper-mine'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animations = {
            layers = {
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/c1.png',
                    width = 96,
                    height = 448,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-160, -16)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/c2.png',
                    width = 96,
                    height = 448,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-64, -16)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/c3.png',
                    width = 96,
                    height = 448,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(32, -16)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/c4.png',
                    width = 96,
                    height = 448,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, -16)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/c5.png',
                    width = 32,
                    height = 448,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    shift = util.by_pixel(192, -16)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/s1.png',
                    width = 96,
                    height = 363,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-136, 14)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/s2.png',
                    width = 96,
                    height = 363,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-40, 14)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/s3.png',
                    width = 96,
                    height = 363,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(56, 14)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/s4.png',
                    width = 96,
                    height = 363,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(152, 14)
                },
                {
                    filename = '__pyraworesgraphics__/graphics/entity/big-mines/copper-mine/s5.png',
                    width = 31,
                    height = 363,
                    line_length = 20,
                    frame_count = 80,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(168, 14)
                },
            }
        },
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyraworesgraphics__/sounds/copper-mine.ogg', volume = 1.3},
        idle_sound = {filename = '__pyraworesgraphics__/sounds/copper-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
