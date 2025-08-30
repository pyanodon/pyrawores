RECIPE({
    type = "recipe",
    name = "flotation-cell-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "steam-engine",       amount = 4 },
        { type = "item", name = "steel-plate",        amount = 10 },
        { type = "item", name = "lab",                amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 3 },
    },
    results = {
        { type = "item", name = "flotation-cell-mk01", amount = 1 }
    }
}):add_unlock("machines-mk01")

RECIPE({
    type = "recipe",
    name = "flotation-cell-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "flotation-cell-mk01", amount = 1 },
        { type = "item", name = "duralumin",           amount = 15 },
        { type = "item", name = "lead-plate",          amount = 10 },
        { type = "item", name = "storage-tank",        amount = 1 },
        { type = "item", name = "engine-unit",         amount = 5 },
        { type = "item", name = "nexelit-plate",       amount = 15 },
        { type = "item", name = "advanced-circuit",    amount = 10 },
    },
    results = {
        { type = "item", name = "flotation-cell-mk02", amount = 1 }
    }
}):add_unlock("machines-mk03")

RECIPE({
    type = "recipe",
    name = "flotation-cell-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "flotation-cell-mk02",  amount = 1 },
        { type = "item", name = "titanium-plate",       amount = 20 },
        { type = "item", name = "stainless-steel",      amount = 20 },
        { type = "item", name = "storage-tank",         amount = 1 },
        { type = "item", name = "tin-plate",            amount = 20 },
        { type = "item", name = "electric-engine-unit", amount = 5 },
        { type = "item", name = "processing-unit",      amount = 10 }
    },
    results = {
        { type = "item", name = "flotation-cell-mk03", amount = 1 }
    }
}):add_unlock("machines-mk04")

RECIPE({
    type = "recipe",
    name = "flotation-cell-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "flotation-cell-mk03",   amount = 1 },
        { type = "item", name = "concrete",              amount = 15 },
        { type = "item", name = "super-steel",           amount = 30 },
        { type = "item", name = "storage-tank",          amount = 1 },
        { type = "item", name = "low-density-structure", amount = 10 },
        { type = "item", name = "nbfe-alloy",            amount = 10 },
    },
    results = {
        { type = "item", name = "flotation-cell-mk04", amount = 1 }
    }
}):add_unlock("machines-mk05")

for i = 1, 4 do
    local name = "flotation-cell-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 32

    ITEM({
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "e",
        place_result = name,
        stack_size = 10
    })

    ENTITY({
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1, result = name },
        fast_replaceable_group = "flotation-cell",
        max_health = 400 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = { { -2.7, -2.7 }, { 2.7, 2.7 } },
        selection_box = { { -3.0, -3.0 }, { 3.0, 3.0 } },
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = { "speed", "productivity", "consumption", "pollution", "quality" },
        crafting_categories = { "flotation" },
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = i * 0.06
            },
        },
        energy_usage = (1.5 * i) .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(-1, -17.5),
                    west_position = util.by_pixel(-1, -17.5),
                    south_position = util.by_pixel(-1, -17.5),
                    east_position = util.by_pixel(-1, -17.5),
                    animation = {
                        layers = {
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/flotation-cell/flotation-cell.png",
                                frame_count = 100,
                                line_length = 10,
                                width = 192,
                                height = 160,
                                animation_speed = 1
                            },
                            {
                                filename = "__pyraworesgraphics__/graphics/entity/flotation-cell/flotation-cell-mask.png",
                                frame_count = 100,
                                line_length = 10,
                                width = 192,
                                height = 160,
                                animation_speed = 1,
                                tint = py.tints[i]
                            },
                        }
                    }
                }
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/flotation-cell/off.png",
                        width = 192,
                        height = 229,
                        frame_count = 1,
                        shift = util.by_pixel(-1, -19)
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/flotation-cell/off-mask.png",
                        width = 192,
                        height = 229,
                        frame_count = 1,
                        shift = util.by_pixel(-1, -19),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/flotation-cell/sh.png",
                        width = 143,
                        height = 172,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(42, 10)
                    }
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = false,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", position = { -2.5, -2.5 }, direction = defines.direction.north } }
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", position = { -0.5, -2.5 }, direction = defines.direction.north } }
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = { { flow_direction = "input", position = { 1.5, -2.5 }, direction = defines.direction.north } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { -0.5, 2.5 }, direction = defines.direction.south } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { -2.5, 2.5 }, direction = defines.direction.south } }
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.96 }, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = { { flow_direction = "output", position = { 1.5, 2.5 }, direction = defines.direction.south } }
            },
        },
        impact_category = "metal",
        working_sound = {
            sound = { filename = "__pyraworesgraphics__/sounds/flotation-cell.ogg", volume = 1.0 },
            idle_sound = { filename = "__pyraworesgraphics__/sounds/flotation-cell.ogg", volume = 0.3 },
            apparent_volume = 2.5
        }
    })
end
