RECIPE {
    type = "recipe",
    name = "iron-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {type = "item", name = "automated-factory-mk01", amount = 2},
        {type = "item", name = "electric-mining-drill",  amount = 20},
        {type = "item", name = "stainless-steel",        amount = 50},
        {type = "item", name = "nexelit-plate",          amount = 50},
        {type = "item", name = "aramid",                 amount = 40},
        {type = "item", name = "iron-plate",             amount = 50},
        {type = "item", name = "advanced-circuit",       amount = 30} --add mo plates, vanadium
    },
    results = {
        {type = "item", name = "iron-mine", amount = 1}
    }
}:add_unlock("big-mines")

ITEM {
    type = "item",
    name = "iron-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-iron.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "iron-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "iron-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-iron.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "iron-mine"},
    fast_replaceable_group = "iron-mine",
    max_health = 600,
    resource_categories = {"iron-rock"},
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
    circuit_connector = circuit_connector_definitions["iron-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/botleft.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-144, 112)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/botmid.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-16, 112)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/botright.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(112, 112)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/midleft.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-144, -16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/midmid.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-16, -16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/midright.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(112, -16)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/topleft.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-144, -144)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/topmid.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-16, -144)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/topright.png",
                    width = 128,
                    height = 128,
                    line_length = 16,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(112, -144)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/botline.png",
                    width = 416,
                    height = 32,
                    line_length = 4,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(0, 192)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/iron-mine/rightline.png",
                    width = 32,
                    height = 416,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(192, 0)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/iron-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/iron-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
