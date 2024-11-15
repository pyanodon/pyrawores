RECIPE {
    type = "recipe",
    name = "salt-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electric-mining-drill", amount = 5},
        {type = "item", name = "iron-plate",            amount = 60},
        {type = "item", name = "jaw-crusher",           amount = 1},
        {type = "item", name = "electronic-circuit",    amount = 40}
    },
    results = {
        {type = "item", name = "salt-mine", amount = 1}
    }
}:add_unlock("electrolysis")

ITEM {
    type = "item",
    name = "salt-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-salt.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "salt-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "salt-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-salt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "salt-mine"},
    fast_replaceable_group = "salt-mine",
    max_health = 1800,
    resource_categories = {"salt-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_slots = 5,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 10,
    effect_receiver = {
        -- makes green modules 9x less effective in order to not trivalize the fluid fuel challenge.
        -- 20% consumption is still possible with green beacons later on.
        base_effect = {consumption = 9}
    },
    energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = {
            pollution = 40
        },
        light_flicker = {
            minimum_light_size = 2
        },
        burns_fluid = true,
        scale_fluid_usage = true,
        destroy_non_fuel_fluid = false,
        fluid_box = {
            volume = 3000,
            pipe_connections = {
                {flow_direction = "input", position = {0, 5.0}, direction = defines.direction.south}
            },
            pipe_covers = py.pipe_covers(false, true, true, true),
            production_type = "input",
        },
        smoke = {
            {
                name = "smoke",
                north_position = {2.48, -3.75},
                east_position = {2.48, -3.75},
                west_position = {2.48, -3.75},
                south_position = {2.48, -3.75},
                frequency = 90,
                starting_vertical_speed = 0.09,
                slow_down_factor = 1,
                starting_frame_deviation = 60
            },
        },
    },
    energy_usage = "2MW",
    mining_power = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["salt-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/i1.png",
                    width = 96,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-129, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/i2.png",
                    width = 96,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-33, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/i3.png",
                    width = 96,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    shift = util.by_pixel(63, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/i4.png",
                    width = 64,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    shift = util.by_pixel(143, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/is3.png",
                    width = 96,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(72, 13)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/salt-mine/is4.png",
                    width = 64,
                    height = 352,
                    line_length = 20,
                    frame_count = 100,
                    animation_speed = 0.2,
                    draw_as_shadow = true,
                    shift = util.by_pixel(151, 13)
                },

            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/salt-mine.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/salt-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
