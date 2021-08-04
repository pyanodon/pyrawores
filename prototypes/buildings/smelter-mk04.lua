RECIPE {
    type = "recipe",
    name = "smelter-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"smelter-mk03", 1},
        {"super-steel", 30},
        {"low-density-structure", 15},
        {"nbfe-alloy", 20},
    },
    results = {
        {"smelter-mk04", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "smelter-mk04",
    icon = "__pyraworesgraphics__/graphics/icons/smelter-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-rawores-buildings-mk04",
    order = "a",
    place_result = "smelter-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "smelter-mk04",
    icon = "__pyraworesgraphics__/graphics/icons/smelter-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "smelter-mk04"},
    fast_replaceable_group = "smelter",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption","speed","pollution"},
    crafting_categories = {"py-rawores-smelter"},
    crafting_speed = 4,
    energy_source =
    {
      type = "fluid",
      emissions_per_minute = 10,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{type = "input", position = {0, -7.0}}
		},
		pipe_covers = DATA.Pipes.covers(false, true, true, true),
		pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
		production_type = "input",
		},
	effectivity = 1,
	burns_fluid = true,
    light_flicker =
    {
      minimum_intensity = 0,
      maximum_intensity = 0,
      light_intensity_to_size_coefficient = 0,
      color = {0,0,0},
    },
	scale_fluid_usage = true,
	fluid_usage_per_tick = 10,
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(-176, -59),
          south_position = util.by_pixel(-176, -59),
          east_position = util.by_pixel(-176, -59),
          west_position = util.by_pixel(-176, -59),
          frequency = 90,
          slow_down_factor = 1,
          starting_vertical_speed = 0.05,
          starting_frame_deviation = 60
        },
        {
            name = "smoke",
            north_position = util.by_pixel(-176, -92),
            south_position = util.by_pixel(-176, -92),
            east_position = util.by_pixel(-176, -92),
            west_position = util.by_pixel(-176, -92),
            frequency = 90,
            slow_down_factor = 1,
            starting_vertical_speed = 0.05,
            starting_frame_deviation = 60
          },
      }
    },
    burns_fluid = true,
	scale_fluid_usage = true,
    energy_usage = "60MW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/off.png",
                width = 512,
                height = 544,
                frame_count = 1,
                shift = util.by_pixel(16, -64)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/off-mask.png",
                width = 512,
                height = 544,
                frame_count = 1,
                shift = util.by_pixel(16, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-144, -64),
            south_position = util.by_pixel(-144, -64),
            east_position = util.by_pixel(-144, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
            }
        },
        {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-144, -64),
            south_position = util.by_pixel(-144, -64),
            east_position = util.by_pixel(-144, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
            }
        },
        {
            north_position = util.by_pixel(-144, -64),
            west_position = util.by_pixel(-144, -64),
            south_position = util.by_pixel(-144, -64),
            east_position = util.by_pixel(-144, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
            }
        },
        {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
            }
        },
        {
            north_position = util.by_pixel(-16, -64),
            west_position = util.by_pixel(-16, -64),
            south_position = util.by_pixel(-16, -64),
            east_position = util.by_pixel(-16, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 128,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3,
            }
        },
        {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on-mask.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
            }
        },
        {
            north_position = util.by_pixel(96, -64),
            west_position = util.by_pixel(96, -64),
            south_position = util.by_pixel(96, -64),
            east_position = util.by_pixel(96, -64),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-fx.png",
                frame_count = 50,
                line_length = 16,
                width = 96,
                height = 480,
                animation_speed = 0.3,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-5.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {5.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {5.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-5.0, 7.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 1.25},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
