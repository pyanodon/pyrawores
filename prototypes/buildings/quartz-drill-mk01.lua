RECIPE {
    type = "recipe",
    name = "quartz-drill-mk01",
    energy_required = 10,
    enabled = true,
    ingredients = {
        {"electric-mining-drill", 1},
        {"iron-plate", 10},
        {"electronic-circuit", 5},
        {"pipe", 5}, 
        {"iron-gear-wheel", 20}
    },
    results = {
        {"quartz-drill-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "quartz-drill-mk01",
    icon = "__pyrawores__/graphics/icons/quartz-drill-mk01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-rawores-drills",
    order = "a",
    place_result = "quartz-drill-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "quartz-drill-mk01",
    icon = "__pyrawores__/graphics/icons/quartz-drill-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "quartz-drill-mk01"},
    fast_replaceable_group = "quartz-drill-mk01",
    max_health = 700,
    resource_categories = {"quartz"},
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},

    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1.2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.02
    },
    energy_usage = "100kW",
    mining_power = 1.2,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/quartz-drill-mk01/quartz-drill-mk01.png",
                width = 160,
                height = 184,
                line_length = 10,
                frame_count = 90,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -13)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-drill-mk01/sh.png",
                width = 172,
                height = 144,
                draw_as_shadow = true,
                line_length = 10,
                frame_count = 90,
                animation_speed = 0.3,
                shift = util.by_pixel(10, 10)
            }
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/quartz-drill-mk01.ogg"},
        idle_sound = {filename = "__pyrawores__/sounds/quartz-drill-mk01.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}
