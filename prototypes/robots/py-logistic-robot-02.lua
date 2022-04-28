local sounds = require("__base__/prototypes/entity/sounds")

local cargo_bot =
    RECIPE {
    type = 'recipe',
    name = 'py-logistic-robot-02',
    energy_required = 10,
    category = 'crafting-with-fluid',
    enabled = false,
    ingredients = {
        {'py-logistic-robot-01', 1},
        {'flying-robot-frame', 1},
        {'titanium-plate', 5},
        {'solder', 5},
        {'super-steel', 10},
        {'advanced-circuit', 5},
        {type = 'fluid', name = 'lubricant', amount = 300}
    },
    results = {
        {'py-logistic-robot-02', 1}
    }
}
cargo_bot:add_unlock({'robotics'})

ITEM {
    type = 'item',
    name = 'py-logistic-robot-02',
    icon = '__pyraworesgraphics__/graphics/icons/py-logistic-robot-02.png',
    icon_size = 32,
    flags = {},
    subgroup = 'py-unsorted',
    order = 'c',
    place_result = 'py-logistic-robot-02',
    stack_size = 50
}:subgroup_order('py-robots', 'e')

ENTITY {
    type = 'logistic-robot',
    name = 'py-logistic-robot-02',
    icon = '__pyraworesgraphics__/graphics/icons/py-logistic-robot-02.png',
    icon_size = 32,
    flags = {'placeable-player', 'player-creation', 'placeable-off-grid', 'not-on-map'},
    minable = {mining_time = 0.1, result = 'py-logistic-robot-02'},
    resistances = {{type = 'fire', percent = 85}},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 5,
    speed = 0.13,
    transfer_distance = 0.5,
    max_energy = '2.5MJ',
    energy_per_tick = '0.06kJ',
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = '3.4kJ',
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/idle.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        --y = 42,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-idle.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            --y = 84,
            scale = 0.5
        }
    },
    idle_with_cargo = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/idle-payload.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-idle-payload.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/run.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-run.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion_with_cargo = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/run-payload.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 64,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-run-payload.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 128,
            frame_count = 1,
            shift = util.by_pixel(0, 0),
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_idle = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-shadow.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_idle_with_cargo = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/shadow-payload.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-shadow-payload.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_in_motion = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/shadow.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-shadow.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    shadow_in_motion_with_cargo = {
        filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/shadow-payload.png',
        priority = 'high',
        line_length = 16,
        width = 64,
        height = 48,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        draw_as_shadow = true,
        direction_count = 16,
        hr_version = {
            filename = '__pyraworesgraphics__/graphics/entity/cargo-robot/hr-shadow-payload.png',
            priority = 'high',
            line_length = 16,
            width = 128,
            height = 96,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            draw_as_shadow = true,
            direction_count = 16,
            scale = 0.5
        }
    },
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0.2}
}
