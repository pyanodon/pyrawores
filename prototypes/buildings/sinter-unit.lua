RECIPE {
    type = "recipe",
    name = "sinter-unit",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "titanium-plate",        amount = 200},
        {type = "item", name = "super-steel",           amount = 50},
        {type = "item", name = "electric-engine-unit",  amount = 10},
        {type = "item", name = "advanced-foundry-mk03", amount = 1},
        {type = "item", name = "processing-unit",       amount = 25},
    },
    results = {
        {type = "item", name = "sinter-unit", amount = 1}
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

local function working_visualizations()
    local working_visualizations = {
        {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/bot.png",
            frame_count = 120,
            line_length = 10,
            width = 224,
            shift = util.by_pixel(0, 48),
            height = 128,
            animation_speed = 0.35
        },
        {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/mid.png",
            priority = "high",
            frame_count = 120,
            line_length = 10,
            shift = util.by_pixel(0, -80),
            width = 224,
            height = 128,
            animation_speed = 0.35
        },
        {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/glow.png",
            frame_count = 120,
            line_length = 10,
            width = 224,
            shift = util.by_pixel(0, -80),
            height = 128,
            animation_speed = 0.35,
            draw_as_glow = true
        },
        {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/glow.png",
            frame_count = 120,
            line_length = 10,
            width = 224,
            height = 128,
            shift = util.by_pixel(0, -80),
            animation_speed = 0.35,
            draw_as_light = true
        },
        {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/top.png",
            priority = "high",
            frame_count = 120,
            line_length = 10,
            width = 224,
            height = 128,
            shift = util.by_pixel(0, -208),
            animation_speed = 0.35
        },
    }
    return {{animation = {layers = working_visualizations}}}
end

local function mouth_opening_frame_sequence()
    return {120, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}
end

ENTITY {
    type = "assembling-machine",
    name = "sinter-unit",
    icon = "__pyraworesgraphics__/graphics/icons/sinter-unit.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sinter-unit"},
    fast_replaceable_group = "sinter-unit",
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"sinter"},
    crafting_speed = 1,
    energy_source = {
        type = "burner",
        fuel_categories = {"chemical", "biomass", "jerry"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },
        smoke = {
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
    graphics_set = py.finite_state_machine_working_visualisations {
        states = {
            {
                name = "idle",
                next_active = "mouth-opening",
                next_inactive = "idle",
                frame_sequence = {119},
            },
            {
                name = "mouth-opening",
                next_active = "mouth-open",
                next_inactive = "mouth-closing",
                frame_sequence = mouth_opening_frame_sequence()
            },
            {
                name = "mouth-closing",
                next_active = "mouth-opening",
                next_inactive = "idle",
                frame_sequence = table.reverse(mouth_opening_frame_sequence())
            },
            {
                name = "mouth-open",
                next_active = "mouth-opening",
                next_inactive = "idle",
                frame_sequence = py.range(31, 118)
            },
        },
        working_visualisations = working_visualizations(),
        shadow = {
            filename = "__pyraworesgraphics__/graphics/entity/sinter-unit/shadow.png",
            width = 96,
            height = 384,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(158, -80)
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {1.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/sinter-unit.ogg", volume = 0.75},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/sinter-unit.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
