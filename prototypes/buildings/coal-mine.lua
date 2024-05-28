RECIPE {
    type = "recipe",
    name = "coal-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"stainless-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 40},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"coal-mine", 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "coal-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-coal.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "coal-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "coal-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-coal.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "coal-mine"},
    fast_replaceable_group = "coal-mine",
    max_health = 600,
    resource_categories = {"coal-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    input_fluid_box = {
        production_type = "input-output",
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {position = {5.99, 0}},
        }
    },

    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 20,
    energy_source =
    {
      type = "burner",
      fuel_category = "drill",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {1.0, -6.75},
            east_position = {1.0, -6.75},
            west_position = {1.0, -6.75},
            south_position = {1.0, -6.75},
            frequency = 90,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    light_flicker =
    {
        minimum_intensity = 0,
        maximum_intensity = 0,
        light_intensity_to_size_coefficient = 0,
        color = {0,0,0},
    },
    energy_usage = "1000kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12,
    },
    circuit_wire_connection_points = circuit_connector_definitions["coal-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["coal-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
            filename = "__pyraworesgraphics__/graphics/entity/coal-mine/h1.png",
            priority = "high",
            frame_count = 79,
            line_length = 21,
            width = 96,
            height = 402,
            animation_speed = 0.3,
            shift = util.by_pixel(-128, -20)
            },
            {
            filename = "__pyraworesgraphics__/graphics/entity/coal-mine/h2.png",
            priority = "high",
            frame_count = 79,
            line_length = 21,
            width = 96,
            height = 402,
            animation_speed = 0.3,
            shift = util.by_pixel(-32, -20)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/coal-mine/h3.png",
                priority = "high",
                frame_count = 79,
                line_length = 21,
                width = 96,
                height = 402,
                animation_speed = 0.3,
                shift = util.by_pixel(64, -20)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/coal-mine/h4.png",
                priority = "high",
                frame_count = 79,
                line_length = 21,
                width = 64,
                height = 402,
                animation_speed = 0.3,
                shift = util.by_pixel(144, -20)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/coal-mine.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/coal-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
