RECIPE {
    type = "recipe",
    name = "wet-scrubber-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "storage-tank",       amount = 1}, --pyindustry py-tank-5000
        {type = "item", name = "steel-plate",        amount = 15},
        {type = "item", name = "distilator",         amount = 1},
        {type = "item", name = "pipe",               amount = 10},
        {type = "item", name = "electronic-circuit", amount = 5},
    },
    results = {
        {type = "item", name = "wet-scrubber-mk01", amount = 1}
    }
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "wet-scrubber-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "wet-scrubber-mk01", amount = 1},
        {type = "item", name = "storage-tank",      amount = 1}, --pyindustry py-tank-5000
        {type = "item", name = "duralumin",         amount = 20},
        {type = "item", name = "engine-unit",       amount = 5},
        {type = "item", name = "nexelit-plate",     amount = 15},
        {type = "item", name = "advanced-circuit",  amount = 10},
    },
    results = {
        {type = "item", name = "wet-scrubber-mk02", amount = 1}
    }
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "wet-scrubber-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "wet-scrubber-mk02",    amount = 1},
        {type = "item", name = "storage-tank",         amount = 1}, --pyindustry py-tank-5000
        {type = "item", name = "titanium-plate",       amount = 20},
        {type = "item", name = "stainless-steel",      amount = 20},
        {type = "item", name = "tin-plate",            amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 4},
        {type = "item", name = "processing-unit",      amount = 10}
    },
    results = {
        {type = "item", name = "wet-scrubber-mk03", amount = 1}
    }
}:add_unlock("machines-mk04")

RECIPE {
    type = "recipe",
    name = "wet-scrubber-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "wet-scrubber-mk03",     amount = 1},
        {type = "item", name = "storage-tank",          amount = 1}, --pyindustry py-tank-5000
        {type = "item", name = "super-steel",           amount = 30},
        {type = "item", name = "low-density-structure", amount = 15},
        {type = "item", name = "nbfe-alloy",            amount = 20},
    },
    results = {
        {type = "item", name = "wet-scrubber-mk04", amount = 1}
    }
}:add_unlock("machines-mk05")

for i = 1, 4 do
    local name = "wet-scrubber-mk0" .. i
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
        fast_replaceable_group = "wet-scrubber",
        max_health = 500 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"wet-scrubber"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (200 * i) .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(0, -190),
                    west_position = util.by_pixel(0, -190),
                    south_position = util.by_pixel(0, -190),
                    east_position = util.by_pixel(0, -190),
                    animation = {
                        filename = "__pyraworesgraphics__/graphics/entity/wet-scrubber/anim-mk0" .. i .. ".png",
                        --priority = "extra-high",
                        frame_count = 2,
                        width = 192,
                        height = 128,
                        animation_speed = 0.2
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/wet-scrubber/wet-scrubber-base-mk0" .. i .. ".png",
                        width = 192,
                        height = 224,
                        frame_count = 1,
                        shift = util.by_pixel(0, -17)
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/wet-scrubber/top-off-mk0" .. i .. ".png",
                        width = 192,
                        height = 128,
                        frame_count = 1,
                        shift = util.by_pixel(0, -190)
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/wet-scrubber/shadow.png",
                        width = 224,
                        height = 192,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(32, 0)
                    }
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
                pipe_connections = {{flow_direction = "input", position = {-2.5, -2.5}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-0.5, -2.5}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {1.5, -2.5}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-0.5, 2.5}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.5, 2.5}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.5, 2.5}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = {filename = "__pyraworesgraphics__/sounds/wet-scrubber.ogg", volume = 1.4},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/wet-scrubber.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
