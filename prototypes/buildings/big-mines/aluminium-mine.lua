RECIPE {
    type = "recipe",
    name = "aluminium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "automated-factory-mk01", amount = 2},
        {type = "item", name = "electric-mining-drill",  amount = 20},
        {type = "item", name = "stainless-steel",        amount = 50},
        {type = "item", name = "nexelit-plate",          amount = 50},
        {type = "item", name = "aramid",                 amount = 40},
        {type = "item", name = "aluminium-plate",        amount = 50},
        {type = "item", name = "advanced-circuit",       amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = "aluminium-mine", amount = 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "aluminium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-aluminium.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "aluminium-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "aluminium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-aluminium.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "aluminium-mine"},
    fast_replaceable_group = "aluminium-mine",
    max_health = 600,
    resource_categories = {"aluminium-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-9.3, -9.3}, {9.3, 9.3}},
    selection_box = {{-9.5, -9.5}, {9.5, 9.5}},
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
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
        type = "burner",
        fuel_categories = {"drill"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },
        smoke =
        {
            {
                name = "turbine-smoke", --top
                north_position = {5.5, -15.5},
                east_position = {5.5, -15.5},
                west_position = {5.5, -15.5},
                south_position = {5.5, -15.5},
                frequency = 40,
                starting_vertical_speed = 0.1,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
            {
                name = "smoke", --chamine direita
                north_position = {8.33, -10},
                east_position = {8.33, -10},
                west_position = {8.33, -10},
                south_position = {8.33, -10},
                frequency = 90,
                starting_vertical_speed = 0.15,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
            {
                name = "light-smoke", -- chamine esquerda topo
                north_position = {-3, -10.9},
                east_position = {-3, -10.9},
                west_position = {-3, -10.9},
                south_position = {-3, -10.9},
                frequency = 40,
                starting_vertical_speed = 0.00,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
            {
                name = "light-smoke", --chamine esquerda bot
                north_position = {-5.2, -4.0},
                east_position = {-5.2, -4.0},
                west_position = {-5.2, -4.0},
                south_position = {-5.2, -4.0},
                frequency = 20,
                starting_vertical_speed = 0.02,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
        },
    },
    energy_usage = "2500kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -9.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["aluminium-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/raw.png",
                    width = 672,
                    height = 864,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-0, -128)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/ao.png",
                    width = 672,
                    height = 864,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-0, -128)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/sh.png",
                    width = 704,
                    height = 608,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    draw_as_shadow = true,
                    animation_speed = 0.2,
                    shift = util.by_pixel(45, 32)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/r1.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-240, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/r2.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-112, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/r3.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(16, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/r4.png",
                    width = 96,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/a1.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-240, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/a2.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-112, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/a3.png",
                    width = 128,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(16, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/a4.png",
                    width = 96,
                    height = 512,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, 16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/smoke.png",
                    width = 256,
                    height = 288,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-80, -96)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/sparkle.png",
                    width = 128,
                    height = 160,
                    line_length = 10,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-160, 208)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/pof.png",
                    width = 96,
                    height = 64,
                    line_length = 16,
                    frame_count = 50,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, -16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/l1.png",
                    width = 128,
                    height = 128,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    draw_as_glow = true,
                    animation_speed = 0.2,
                    shift = util.by_pixel(272, -144)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/l-bottom.png",
                    width = 128,
                    height = 128,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    draw_as_glow = true,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-48, 208)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/aluminium-mine/l-top.png",
                    width = 160,
                    height = 128,
                    repeat_count = 50,
                    line_length = 1,
                    frame_count = 1,
                    draw_as_glow = true,
                    animation_speed = 0.2,
                    shift = util.by_pixel(32, -208)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/aluminium-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/aluminium-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
