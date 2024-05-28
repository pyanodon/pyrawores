RECIPE {
    type = "recipe",
    name = "sinter-unit",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"titanium-plate", 200},
        {"super-steel", 50},
        {"electric-engine-unit", 10},
        {"advanced-foundry-mk03", 1},
        {"processing-unit", 25},
    },
    results = {
        {"sinter-unit", 1}
    }
}:add_unlock("machines-mk05")

ITEM {
    type = "item",
    name = "sinter-unit",
    icon = "__pyraworesgraphics__/graphics/icons/sinter-unit.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-others",
    order = "b",
    place_result = "sinter-unit",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sinter-unit",
    icon = "__pyraworesgraphics__/graphics/icons/sinter-unit.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sinter-unit"},
    fast_replaceable_group = "sinter-unit",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"sinter"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      --fuel_category = "chemical",
      fuel_categories = {"chemical", "biomass", "jerry"},
      effectivity = 1,
      light_flicker =
      {
          minimum_intensity = 0,
          maximum_intensity = 0,
          light_intensity_to_size_coefficient = 0,
          color = {1,0.93,0.19},
      },
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {3, -7.0},
            east_position = {3, -7.0},
            west_position = {3, -7.0},
            south_position = {3, -7.0},
            frequency = 90,
            starting_vertical_speed = 0.15,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "20MW",
    animation = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/off.png",
                width = 224,
                height = 384,
                frame_count = 1,
                shift = util.by_pixel(0, -80)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/shadow.png",
                width = 96,
                height = 384,
                frame_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(158, -80)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, 48),
            west_position = util.by_pixel(0, 48),
            south_position = util.by_pixel(0, 48),
            east_position = util.by_pixel(0, 48),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/bot.png",
                frame_count = 120,
                line_length = 10,
                width = 224,
                height = 128,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(0, -80),
            west_position = util.by_pixel(0, -80),
            south_position = util.by_pixel(0, -80),
            east_position = util.by_pixel(0, -80),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/mid.png",
                priority = "high",
                frame_count = 120,
                line_length = 10,
                width = 224,
                height = 128,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(0, -80),
            west_position = util.by_pixel(0, -80),
            south_position = util.by_pixel(0, -80),
            east_position = util.by_pixel(0, -80),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/glow.png",
                draw_as_glow = true,
                blend_mode = "additive-soft",
                frame_count = 120,
                line_length = 10,
                width = 224,
                height = 128,
                animation_speed = 0.35
            }
        },
        {
            north_position = util.by_pixel(0, -208),
            west_position = util.by_pixel(0, -208),
            south_position = util.by_pixel(0, -208),
            east_position = util.by_pixel(0, -208),
            animation = {
                filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/top.png",
                priority = "high",
                frame_count = 120,
                line_length = 10,
                width = 224,
                height = 128,
                animation_speed = 0.35
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
        sound = {filename = "__pyraworesgraphics__/sounds/sinter-unit.ogg", volume = 0.75},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/sinter-unit.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
