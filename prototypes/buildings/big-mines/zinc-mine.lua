RECIPE {
    type = 'recipe',
    name = 'zinc-mine',
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = 'automated-factory-mk01', amount = 2},
        {type = "item", name = 'electric-mining-drill', amount = 20},
        {type = "item", name = 'stainless-steel', amount = 50},
        {type = "item", name = 'nexelit-plate', amount = 50},
        {type = "item", name = 'zinc-plate', amount = 50},
        {type = "item", name = 'advanced-circuit', amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = 'zinc-mine', amount = 1}
    }
}:add_unlock('big-mines')

ITEM {
    type = 'item',
    name = 'zinc-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-zinc.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-rawores-mines',
    order = 'a',
    place_result = 'zinc-mine',
    stack_size = 10
}

ENTITY {
    type = 'mining-drill',
    name = 'zinc-mine',
    icon = '__pyraworesgraphics__/graphics/icons/mega-zinc.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 1, result = 'zinc-mine'},
    fast_replaceable_group = 'zinc-mine',
    max_health = 600,
    resource_categories = {'zinc-rock'},
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
        emissions_per_minute = {
            pollution = 0.06
        },
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
    circuit_wire_connection_points = circuit_connector_definitions['zinc-mine'].points,
    circuit_connector_sprites = circuit_connector_definitions['zinc-mine'].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/zinc-mine/i1.png',
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-128, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/zinc-mine/i2.png',
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-32, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/zinc-mine/i3.png',
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(64, 0)
            },
            {
                filename = '__pyraworesgraphics__/graphics/entity/big-mines/zinc-mine/i4.png',
                width = 69,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(146, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        sound = {filename = '__pyraworesgraphics__/sounds/zinc-mine.ogg', volume = 1.0},
        idle_sound = {filename = '__pyraworesgraphics__/sounds/zinc-mine.ogg', volume = 0.3},
        apparent_volume = 2.5
    }
}
