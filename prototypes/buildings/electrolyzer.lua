RECIPE {
    type = "recipe",
    name = "electrolyzer-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                 amount = 2},
        {type = "item", name = "aluminium-plate",     amount = 30},
        {type = "item", name = "tar-processing-unit", amount = 1},
        {type = "item", name = "steam-engine",        amount = 3},
        {type = "item", name = "electronic-circuit",  amount = 5},
    },
    results = {
        {type = "item", name = "electrolyzer-mk01", amount = 1}
    }
}:add_unlock("electrolysis")

RECIPE {
    type = "recipe",
    name = "electrolyzer-mk02",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electrolyzer-mk01", amount = 1},
        {type = "item", name = "duralumin",         amount = 20},
        {type = "item", name = "engine-unit",       amount = 5},
        {type = "item", name = "nexelit-plate",     amount = 15},
        {type = "item", name = "advanced-circuit",  amount = 10},
        {type = "item", name = "nbti-alloy",        amount = 20},
    },
    results = {
        {type = "item", name = "electrolyzer-mk02", amount = 1}
    }
}:add_unlock("machines-mk03")

if mods.pyhightech then
    RECIPE("electrolyzer-mk03"):add_ingredient_unsafe {type = "item", name = "biopolymer", amount = 40}:add_ingredient_unsafe {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient_unsafe {type = "item", name = "graphene-roll", amount = 10}
end

RECIPE {
    type = "recipe",
    name = "electrolyzer-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electrolyzer-mk02",    amount = 1},
        {type = "item", name = "titanium-plate",       amount = 20},
        {type = "item", name = "stainless-steel",      amount = 20},
        {type = "item", name = "tin-plate",            amount = 20},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "processing-unit",      amount = 10},
        {type = "item", name = "super-alloy",          amount = 10},
        {type = "item", name = "boron-carbide",        amount = 30},
        {type = "item", name = "science-coating",      amount = 1},
        {type = "item", name = "control-unit",         amount = 5},
    },
    results = {
        {type = "item", name = "electrolyzer-mk03", amount = 1}
    }
}:add_unlock("machines-mk04")

if mods.pyhightech then
    RECIPE("electrolyzer-mk04"):replace_ingredient_unsafe("control-unit", "intelligent-unit"):add_ingredient_unsafe {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient_unsafe {type = "item", name = "nv-center", amount = 2}
end

RECIPE {
    type = "recipe",
    name = "electrolyzer-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "electrolyzer-mk03",     amount = 1},
        {type = "item", name = "concrete",              amount = 20},
        {type = "item", name = "super-steel",           amount = 30},
        {type = "item", name = "low-density-structure", amount = 15},
        {type = "item", name = "nbfe-alloy",            amount = 20},
    },
    results = {
        {type = "item", name = "electrolyzer-mk04", amount = 1}
    }
}:add_unlock("machines-mk05")


for i = 1, 4 do
    local name = "electrolyzer-mk0" .. i
    local icon = "__pyraworesgraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 32

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-rawores-buildings-mk0" .. i,
        order = "d",
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
        fast_replaceable_group = "electrolyzer",
        max_health = 600 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"electrolyzer"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.06 * i
            },
        },
        energy_usage = (10 * i) .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel(-14.5, -16),
                    west_position = util.by_pixel(-14.5, -16),
                    south_position = util.by_pixel(-14.5, -16),
                    east_position = util.by_pixel(-14.5, -16),
                    animation = {
                        filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/on-mk0" .. i .. ".png",
                        priority = "high",
                        frame_count = 60,
                        line_length = 10,
                        width = 160,
                        height = 160,
                        animation_speed = 1.5
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/off-mk0" .. i .. ".png",
                        width = 189,
                        height = 192,
                        frame_count = 1,
                        shift = util.by_pixel(0, 0)
                    },
                    {
                        filename = "__pyraworesgraphics__/graphics/entity/electrolyzer/shadow.png",
                        width = 29,
                        height = 192,
                        frame_count = 1,
                        draw_as_shadow = true,
                        shift = util.by_pixel(94, 0)
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
            sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.8},
            idle_sound = {filename = "__pyraworesgraphics__/sounds/electrolyzer.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
