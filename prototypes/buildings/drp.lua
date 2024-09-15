RECIPE {
    type = "recipe",
    name = "drp",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"titanium-plate", 200},
        {"super-steel", 50},
        {"classifier", 3},
        {"processing-unit", 25},
    },
    results = {
        {"drp", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "drp",
    icon = "__pyraworesgraphics__/graphics/icons/drp.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-others",
    order = "a",
    place_result = "drp",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "drp",
    icon = "__pyraworesgraphics__/graphics/icons/drp.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "drp"},
    fast_replaceable_group = "drp",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"drp"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1500kW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/drp/down.png",
                width = 160,
                height = 160,
                line_length = 12,
                frame_count = 144,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/drp/up.png",
                width = 160,
                height = 160,
                line_length = 12,
                frame_count = 144,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -160)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/drp/sh.png",
                width = 192,
                height = 128,
                line_length = 10,
                frame_count = 144,
                animation_speed = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 10)
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -2.3}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 2.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.3, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.3, 0.0}, direction = defines.direction.west}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/drp.ogg", volume = 1.0},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/drp.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
