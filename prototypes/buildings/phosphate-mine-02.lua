RECIPE {
    type = "recipe",
    name = "phosphate-mine-02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"phosphate-mine", 1},
        {"electric-mining-drill", 20},
        {"stainless-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 40},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"phosphate-mine-02", 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "phosphate-mine-02",
    icon = "__pyraworesgraphics__/graphics/icons/mega-phosphate.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "phosphate-mine-02",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "phosphate-mine-02",
    icon = "__pyraworesgraphics__/graphics/icons/mega-phosphate.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "phosphate-mine-02"},
    fast_replaceable_group = "phosphate-mine-02",
    max_health = 600,
    resource_categories = {"phosphate-rock-02"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 20,
    energy_source =
    {
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0,0,0},
        },
      type = "burner",
      fuel_category = "drill",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "2500kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["phosphate-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["phosphate-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i1.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-178, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i2.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-114, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i3.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-50, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i4.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(14, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i5.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(78, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i6.png",
                width = 64,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(142, 6)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/phosphate-mine-02/i7.png",
                width = 32,
                height = 429,
                line_length = 32,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(190, 6)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/tin-mine.ogg", volume = 0.9},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/tin-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
