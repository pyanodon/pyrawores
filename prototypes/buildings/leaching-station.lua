RECIPE {
    type = "recipe",
    name = "leaching-station-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "storage-tank",       amount = 3},
        {type = "item", name = "steel-plate",        amount = 15},
        {type = "item", name = "distilator",         amount = 1},
        {type = "item", name = "pipe",               amount = 10},
        {type = "item", name = "electronic-circuit", amount = 5},
    },
    results = {
        {type = "item", name = "leaching-station-mk01", amount = 1}
    }
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "leaching-station-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "leaching-station-mk01", amount = 1},
        {type = "item", name = "storage-tank",          amount = 3},
        {type = "item", name = "duralumin",             amount = 15},
        {type = "item", name = "engine-unit",           amount = 5},
        {type = "item", name = "lead-plate",            amount = 10},
        {type = "item", name = "nexelit-plate",         amount = 15},
        {type = "item", name = "advanced-circuit",      amount = 10},
    },
    results = {
        {type = "item", name = "leaching-station-mk02", amount = 1}
    }
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "leaching-station-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "leaching-station-mk02", amount = 1},
        {type = "item", name = "storage-tank",          amount = 3},
        {type = "item", name = "duralumin",             amount = 15},
        {type = "item", name = "lead-plate",            amount = 10},
        {type = "item", name = "nexelit-plate",         amount = 15},
        {type = "item", name = "electric-engine-unit",  amount = 4},
        {type = "item", name = "processing-unit",       amount = 10},
    },
    results = {
        {type = "item", name = "leaching-station-mk03", amount = 1}
    }
}:add_unlock("machines-mk04")

RECIPE {
    type = "recipe",
    name = "leaching-station-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "leaching-station-mk03", amount = 1},
        {type = "item", name = "storage-tank",          amount = 3},
        {type = "item", name = "concrete",              amount = 20},
        {type = "item", name = "super-steel",           amount = 30},
        {type = "item", name = "low-density-structure", amount = 15},
        {type = "item", name = "nbfe-alloy",            amount = 20},
    },
    results = {
        {type = "item", name = "leaching-station-mk04", amount = 1}
    }
}:add_unlock("machines-mk05")

for i = 1, 4 do
    local name = "leaching-station-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 32

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "g",
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
        fast_replaceable_group = "leaching-station",
        max_health = 300 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"leaching"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (400 * i) .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(0, -5),
                    west_position = util.by_pixel(0, -5),
                    south_position = util.by_pixel(0, -5),
                    east_position = util.by_pixel(0, -5),
                    animation = {
                        filename = "__pyraworesgraphics__/graphics/entity/leaching-station/on-mk0" .. i .. ".png",
                        frame_count = 1,
                        width = 224,
                        height = 233,
                        --animation_speed = 0.4
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/leaching-station/off-mk0" .. i .. ".png",
                        width = 224,
                        height = 233,
                        frame_count = 1,
                        shift = util.by_pixel(0, -5)
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {3.0, -2.0}, direction = defines.direction.east}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-3.0, 2.0}, direction = defines.direction.west}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/leaching-station.ogg", volume = 0.8},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/leaching-station.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
