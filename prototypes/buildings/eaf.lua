RECIPE {
    type = "recipe",
    name = "eaf-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "boiler",                amount = 5},
        {type = "item", name = "electric-mining-drill", amount = 1},
        {type = "item", name = "steel-plate",           amount = 25},
        {type = "item", name = "steam-engine",          amount = 3},
        {type = "item", name = "electronic-circuit",    amount = 10},
    },
    results = {
        {type = "item", name = "eaf-mk01", amount = 1}
    }
}:add_unlock("smelters-mk01")

RECIPE {
    type = "recipe",
    name = "eaf-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"eaf-mk01",         1},
        {"duralumin",        15},
        {"lead-plate",       10},
        {"engine-unit",      10},
        {"nexelit-plate",    10},
        {"advanced-circuit", 20},
    },
    results = {
        {"eaf-mk02", 1}
    }
}:add_unlock("smelters-mk02")

RECIPE {
    type = "recipe",
    name = "eaf-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"eaf-mk02",             1},
        {"titanium-plate",       20},
        {"stainless-steel",      20},
        {"tin-plate",            20},
        {"electric-engine-unit", 6},
        {"processing-unit",      10}
    },
    results = {
        {"eaf-mk03", 1}
    }
}:add_unlock("smelters-mk03")

RECIPE {
    type = "recipe",
    name = "eaf-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"eaf-mk03",              1},
        {"concrete",              15},
        {"super-steel",           30},
        {"low-density-structure", 10},
        {"nbfe-alloy",            10},
    },
    results = {
        {"eaf-mk04", 1}
    }
}:add_unlock("smelters-mk04")

for i = 1, 4 do
    local name = "eaf-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 32

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "c",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = name},
        fast_replaceable_group = "eaf",
        max_health = 500 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"eaf"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.12 * i
            },
            smoke =
            {
                {
                    name = "smoke",
                    north_position = {3.0, -5.0},
                    east_position = {3.0, -5.0},
                    west_position = {3.0, -5.0},
                    south_position = {3.0, -5.0},
                    frequency = 90,
                    starting_vertical_speed = 0.05,
                    slow_down_factor = 1,
                    starting_frame_deviation = 60
                },
            },
        },
        energy_usage = (18 * i) .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(16, -16),
                    west_position = util.by_pixel(16, -16),
                    south_position = util.by_pixel(16, -16),
                    east_position = util.by_pixel(16, -16),
                    animation = {
                        layers = {
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/eaf/on.png",
                                priority = "high",
                                frame_count = 50,
                                line_length = 10,
                                width = 128,
                                height = 128,
                                animation_speed = 3
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/eaf/on-mask.png",
                                priority = "high",
                                frame_count = 50,
                                line_length = 10,
                                width = 128,
                                height = 128,
                                animation_speed = 3,
                                tint = py.tints[i]
                            },
                        }
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/eaf/off.png",
                        width = 160,
                        height = 192,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16)
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/eaf/off-mask.png",
                        width = 160,
                        height = 192,
                        frame_count = 1,
                        shift = util.by_pixel(0, -16),
                        tint = py.tints[i]
                    },
                }
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
                pipe_connections = {{flow_direction = "input", position = {1.0, -2.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-1.0, -2.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.0, 2.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-1.0, 2.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/eaf.ogg", volume = 0.75},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/eaf.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
