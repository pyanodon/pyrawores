RECIPE {
    type = "recipe",
    name = "bof-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"boiler", 3},
        {"washer", 1},
        {"iron-plate", 15},
        {"steam-engine", 1},
        {"electronic-circuit", 10},
    },
    results = {
        {"bof-mk01", 1}
    }
}:add_unlock("smelters-mk01")

ITEM {
    type = "item",
    name = "bof-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/bof-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "a",
    place_result = "bof-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bof-mk01",
    icon = "__pyraworesgraphics__/graphics/icons/bof-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bof-mk01"},
    fast_replaceable_group = "bof",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bof"},
    crafting_speed = 1,
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
      --fuel_category = "chemical",
      fuel_categories = {"chemical", "biomass"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {2.95, -5.0},
            east_position = {2.95, -5.0},
            west_position = {2.95, -5.0},
            south_position = {2.95, -5.0},
            frequency = 90,
            starting_vertical_speed = 0.05,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "5MW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/bof/off.png",
                width = 256,
                height = 288,
                frame_count = 1,
                shift = util.by_pixel(17, -32)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-15.5, -64),
            west_position = util.by_pixel(-15.5, -64),
            south_position = util.by_pixel(-15.5, -64),
            east_position = util.by_pixel(-15.5, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/bof/on.png",
                priority = "high",
                frame_count = 24,
                line_length = 6,
                width = 128,
                height = 160,
                animation_speed = 1.0
            }
        },
        {
            north_position = util.by_pixel(-15.5, -64),
            west_position = util.by_pixel(-15.5, -64),
            south_position = util.by_pixel(-15.5, -64),
            east_position = util.by_pixel(-15.5, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/bof/g.png",
                priority = "high",
                frame_count = 24,
                line_length = 6,
                width = 128,
                height = 160,
                draw_as_glow = true,
                animation_speed = 1.0
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.8},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/bof.ogg", volume = 0.02},
    }
}
