local sounds = require "__base__/prototypes/entity/sounds"

RECIPE {
    type = "recipe",
    name = "py-construction-robot-mk02",
    energy_required = 10,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {type = "item",  name = "py-construction-robot-mk01", amount = 1},
        {type = "item",  name = "aramid",                     amount = 5},
        {type = "item",  name = "stainless-steel",            amount = 5},
        {type = "item",  name = "flying-robot-frame",         amount = 1},
        {type = "item",  name = "solder",                     amount = 5},
        {type = "item",  name = "advanced-circuit",           amount = 3},
        {type = "fluid", name = "lubricant",                  amount = 100},
    },
    results = {
        {type = "item", name = "py-construction-robot-mk02", amount = 1}
    }
}:add_unlock("robotics")

if mods.pyhightech then
    RECIPE("py-construction-robot-mk02"):add_ingredient_unsafe {type = "item", name = "nexelit-battery", amount = 1}
end

ITEM {
    type = "item",
    name = "py-construction-robot-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/py-construction-robot-02.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-unsorted",
    order = "b",
    place_result = "py-construction-robot-mk02",
    stack_size = 50
}:subgroup_order("py-robots", "d")

local shadow = {
    filename = "__pyraworesgraphics__/graphics/entity/construction-robot/shadow.png",
    priority = "high",
    line_length = 16,
    width = 128,
    height = 128,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.75),
    draw_as_shadow = true,
    direction_count = 16,
    scale = 0.5
}

ENTITY {
    type = "construction-robot",
    name = "py-construction-robot-mk02",
    icon = "__pyraworesgraphics__/graphics/icons/py-construction-robot-02.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "py-construction-robot-mk02"},
    resistances = {{type = "fire", percent = 85}},
    max_health = 20,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.13,
    transfer_distance = 0.5,
    max_energy = "2.5MJ",
    energy_per_tick = "0.06kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "3.4kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 1, size = 4, color = {r = 0.8, g = 0.8, b = 0.8}},
    idle = {
        filename = "__pyraworesgraphics__/graphics/entity/construction-robot/01.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        scale = 0.5
    },
    in_motion = {
        filename = "__pyraworesgraphics__/graphics/entity/construction-robot/01.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        y = 128,
        scale = 0.5
    },
    working = {
        filename = "__pyraworesgraphics__/graphics/entity/construction-robot/02.png",
        priority = "high",
        line_length = 2,
        width = 128,
        height = 128,
        frame_count = 2,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        animation_speed = 0.3,
        scale = 0.5
    },
    smoke = {
        filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
        width = 39,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.078125, -0.15625},
        animation_speed = 0.3
    },
    sparks = {
        {
            filename = "__base__/graphics/entity/sparks/sparks-01.png",
            width = 39,
            height = 34,
            frame_count = 19,
            line_length = 19,
            shift = {-0.109375, 0.3125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = "__base__/graphics/entity/sparks/sparks-02.png",
            width = 36,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = {0.03125, 0.125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = "__base__/graphics/entity/sparks/sparks-03.png",
            width = 42,
            height = 29,
            frame_count = 19,
            line_length = 19,
            shift = {-0.0625, 0.203125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = "__base__/graphics/entity/sparks/sparks-04.png",
            width = 40,
            height = 35,
            frame_count = 19,
            line_length = 19,
            shift = {-0.0625, 0.234375},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = "__base__/graphics/entity/sparks/sparks-05.png",
            width = 39,
            height = 29,
            frame_count = 19,
            line_length = 19,
            shift = {-0.109375, 0.171875},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        },
        {
            filename = "__base__/graphics/entity/sparks/sparks-06.png",
            width = 44,
            height = 36,
            frame_count = 19,
            line_length = 19,
            shift = {0.03125, 0.3125},
            tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
            animation_speed = 0.3
        }
    },
    shadow_idle = shadow,
    shadow_idle_with_cargo = shadow,
    shadow_in_motion = shadow,
    shadow_in_motion_with_cargo = shadow,
    shadow_working = {
        filename = "__pyraworesgraphics__/graphics/entity/construction-robot/shadow.png",
        priority = "high",
        line_length = 16,
        width = 128,
        height = 128,
        frame_count = 1,
        repeat_count = 2,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        scale = 0.5
    },
    working_sound = sounds.construction_robot(0.5),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22}
}
