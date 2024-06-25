RECIPE {
    type = "recipe",
    name = "hydroclassifier-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"hydroclassifier-mk02", 1},
        {"titanium-plate", 20},
        {"stainless-steel", 20},
        {"electric-engine-unit", 6},
        {"tin-plate", 20},
        {"processing-unit", 10}
    },
    results = {
        {"hydroclassifier-mk03", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "hydroclassifier-mk03",
    icon = "__pyraworesgraphics__/graphics/icons/hydroclassifier-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk03",
    order = "f",
    place_result = "hydroclassifier-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hydroclassifier-mk03",
    icon = "__pyraworesgraphics__/graphics/icons/hydroclassifier-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "hydroclassifier-mk03"},
    fast_replaceable_group = "hydroclassifier",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hydroclassifier"},
    crafting_speed =3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "700kW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/hydroclassifier/h1-mk03.png",
                width = 96,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 1.5,
                shift = util.by_pixel(-63, -2)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/hydroclassifier/h2-mk03.png",
                width = 96,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 1.5,
                shift = util.by_pixel(31, -2)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/hydroclassifier/h3-mk03.png",
                width = 32,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 1.5,
                shift = util.by_pixel(95, -2)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/hydroclassifier/shadow.png",
                width = 96,
                height = 222,
                line_length = 21,
                frame_count = 150,
                animation_speed = 1.5,
                draw_as_shadow = true,
                shift = util.by_pixel(79, -2)
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/flotation-cell.ogg", volume = 1.0},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/flotation-cell.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
