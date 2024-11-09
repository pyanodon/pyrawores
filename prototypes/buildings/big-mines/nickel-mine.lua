RECIPE {
    type = "recipe",
    name = "nickel-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "automated-factory-mk01", amount = 2},
        {type = "item", name = "electric-mining-drill",  amount = 20},
        {type = "item", name = "stainless-steel",        amount = 50},
        {type = "item", name = "nexelit-plate",          amount = 50},
        {type = "item", name = "nickel-plate",           amount = 50},
        {type = "item", name = "advanced-circuit",       amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = "nickel-mine", amount = 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "nickel-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-nickel.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "nickel-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "nickel-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-nickel.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "nickel-mine"},
    fast_replaceable_group = "nickel-mine",
    max_health = 600,
    resource_categories = {"nickel-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 20,
    energy_source =
    {
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0},
        },
        type = "burner",
        fuel_categories = {"drill"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "2500kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["nickel-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["nickel-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a1.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-192, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a2.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-160, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a3.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-128, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a4.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-96, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a5.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-64, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a6.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-32, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a7.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(0, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a8.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(32, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a9.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(64, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a10.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(96, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a11.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a12.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(160, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/nickel-mine/a13.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 131,
                    animation_speed = 0.2,
                    shift = util.by_pixel(192, 0)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/nickel-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/nickel-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
