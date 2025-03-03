RECIPE {
    type = "recipe",
    name = "uranium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "automated-factory-mk01", amount = 2},
        {type = "item", name = "electric-mining-drill",  amount = 20},
        {type = "item", name = "stainless-steel",        amount = 50},
        {type = "item", name = "nexelit-plate",          amount = 50},
        {type = "item", name = "aramid",                 amount = 50},
        {type = "item", name = "advanced-circuit",       amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = "uranium-mine", amount = 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "uranium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-uranium.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "uranium-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "uranium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-uranium.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "uranium-mine"},
    fast_replaceable_group = "uranium-mine",
    max_health = 600,
    resource_categories = {"uranium-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    input_fluid_box = {
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        volume = 200,
        pipe_connections = {
            {flow_direction = "input-output", position = {5.0, 0}, direction = defines.direction.east},
        }
    },
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 15,
    energy_source =
    {
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0},
        },
        type = "burner",
        fuel_categories = {"drill"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },

    },
    energy_usage = "2500kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["uranium-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/uranium-mine/left.png",
                    width = 192,
                    height = 399,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-80, -22)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/uranium-mine/right.png",
                    width = 160,
                    height = 399,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(96, -22)
                },
                --SHADOWS
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/uranium-mine/shadow-left.png",
                    width = 192,
                    height = 373,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(-80, -4)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/uranium-mine/shadow-right.png",
                    width = 191,
                    height = 373,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(112, -4)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/uranium-mine.ogg", volume = 1},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/uranium-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
