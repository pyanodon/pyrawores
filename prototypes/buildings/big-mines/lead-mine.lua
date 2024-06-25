RECIPE {
    type = 'recipe',
    name = 'lead-mine',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {'automated-factory-mk01', 2},
        {'electric-mining-drill',  20},
        {'stainless-steel',        50},
        {'nexelit-plate',          50},
        {'lead-plate',             50},
        {'advanced-circuit',       30} --add mo plates, vanadium
    },
    results = {
        {'lead-mine', 1}
    }
}:add_unlock('big-mines')

ITEM {
    type = 'item',
    name = 'lead-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-lead.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-rawores-mines',
    order = 'a',
    place_result = 'lead-mine',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'lead-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-lead.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'lead-mine'},
    fast_replaceable_group = 'lead-mine',
    max_health = 600,
    resource_categories = {'lead-rock'},
    corpse = 'big-remnants',
    dying_explosion = 'medium-explosion',
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
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
        emissions_per_minute = 0.06,
    },
    energy_usage = '2500kW',
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = '__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png',
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions['lead-mine'].points,
    circuit_connector_sprites = circuit_connector_definitions['lead-mine'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/lead-mine/h1.png',
                width = 128,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, -10)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/lead-mine/h2.png',
                width = 128,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(16, -10)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/lead-mine/h3.png',
                width = 101,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(130, -10)
            },
        }
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyraworesgraphics__/sounds/lead-mine.ogg', volume = 1.4},
        idle_sound = {filename = '__pyraworesgraphics__/sounds/lead-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
