RECIPE {
    type = "recipe",
    name = "smelter-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 20},
        {type = "item", name = "steel-plate",        amount = 40},
        {type = "item", name = "titanium-plate",     amount = 15},
        {type = "item", name = "iron-plate",         amount = 40},
        {type = "item", name = "steam-engine",       amount = 10},
        {type = "item", name = "iron-gear-wheel",    amount = 50},
        {type = "item", name = "electronic-circuit", amount = 5}
    },
    results = {
        {type = "item", name = "smelter-mk01", amount = 1}
    }
}:add_unlock("alloys-mk01")

if mods.pyhightech then
    RECIPE("smelter-mk01"):add_ingredient_unsafe {type = "item", name = "ceramic", amount = 50}
end

RECIPE {
    type = "recipe",
    name = "smelter-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "smelter-mk01",     amount = 1},
        {type = "item", name = "duralumin",        amount = 30},
        {type = "item", name = "lead-plate",       amount = 40},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "engine-unit",      amount = 20},
    },
    results = {
        {type = "item", name = "smelter-mk02", amount = 1}
    }
}:add_unlock("smelters-mk02")

if mods.pyhightech then
    RECIPE("smelter-mk02"):add_ingredient_unsafe {type = "item", name = "ceramic", amount = 50}
end

RECIPE {
    type = "recipe",
    name = "smelter-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "smelter-mk02",         amount = 1},
        {type = "item", name = "storage-tank",         amount = 3},
        {type = "item", name = "duralumin",            amount = 30},
        {type = "item", name = "lead-plate",           amount = 30},
        {type = "item", name = "nexelit-plate",        amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "processing-unit",      amount = 10},
        {type = "item", name = "nbti-alloy",           amount = 15},
        {type = "item", name = "boron-carbide",        amount = 20},
        {type = "item", name = "py-heat-exchanger",    amount = 1},
    },
    results = {
        {type = "item", name = "smelter-mk03", amount = 1}
    }
}:add_unlock("smelters-mk03")

if mods.pyhightech then
    RECIPE("smelter-mk03"):add_ingredient_unsafe {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient_unsafe {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient_unsafe {type = "item", name = "graphene-roll", amount = 15}
end

RECIPE {
    type = "recipe",
    name = "smelter-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "smelter-mk03",          amount = 1},
        {type = "item", name = "super-steel",           amount = 30},
        {type = "item", name = "low-density-structure", amount = 15},
        {type = "item", name = "nbfe-alloy",            amount = 20},
        {type = "item", name = "super-alloy",           amount = 20},
        {type = "item", name = "wall-shield",           amount = 2},
        {type = "item", name = "science-coating",       amount = 1},
        {type = "item", name = "control-unit",          amount = 5},
    },
    results = {
        {type = "item", name = "smelter-mk04", amount = 1}
    }
}:add_unlock("smelters-mk04")

if mods.pyhightech then
    RECIPE("smelter-mk04"):replace_ingredient_unsafe("control-unit", "intelligent-unit"):add_ingredient_unsafe {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient_unsafe {type = "item", name = "harmonic-absorber", amount = 10}
end

for i = 1, 4 do
    local name = "smelter-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "smelter",
        max_health = 1000 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
        selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"consumption", "speed", "pollution", "productivity"},
        crafting_categories = {"py-rawores-smelter"},
        crafting_speed = i,
        energy_source = {
            type = "fluid",
            emissions_per_minute = {
                pollution = 10 * i
            },
            destroy_non_fuel_fluid = false,
            fluid_box =
            {
                volume = 100,
                height = 2,
                pipe_connections =
                {
                    {flow_direction = "input", position = {0, -6.0}, direction = defines.direction.north}
                },
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                production_type = "input",
            },
            effectivity = 1,
            burns_fluid = true,
            light_flicker =
            {
                minimum_intensity = 0,
                maximum_intensity = 0,
                light_intensity_to_size_coefficient = 0,
                color = {0, 0, 0},
            },
            scale_fluid_usage = true,
            fluid_usage_per_tick = 10 * i,
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
        energy_usage = (10 * i) .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    animation = {
                        layers = {
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                shift = util.by_pixel(-144, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-on-mask.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                tint = py.tints[i],
                                shift = util.by_pixel(-144, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                shift = util.by_pixel(-16, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-on-mask.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                tint = py.tints[i],
                                shift = util.by_pixel(-16, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 96,
                                height = 480,
                                animation_speed = 0.3,
                                shift = util.by_pixel(96, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-on-mask.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 96,
                                height = 480,
                                animation_speed = 0.3,
                                tint = py.tints[i],
                                shift = util.by_pixel(96, -64)
                            },
                        },
                    }
                },
                {
                    fadeout = true,
                    constant_speed = true,
                    animation = {
                        layers = {
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/left-fx.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                draw_as_glow = true,
                                shift = util.by_pixel(-144, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/mid-fx.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 128,
                                height = 480,
                                animation_speed = 0.3,
                                draw_as_glow = true,
                                shift = util.by_pixel(-16, -64)
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/smelter/right-fx.png",
                                frame_count = 50,
                                line_length = 16,
                                width = 96,
                                height = 480,
                                animation_speed = 0.3,
                                draw_as_glow = true,
                                shift = util.by_pixel(96, -64)
                            },
                        }
                    }
                }
            },
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
                        tint = py.tints[i],
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
                pipe_connections = {{flow_direction = "input", position = {-3.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-5.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {3.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {5.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {3.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {5.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-3.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-5.0, 6.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 1.25},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/smelter.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
