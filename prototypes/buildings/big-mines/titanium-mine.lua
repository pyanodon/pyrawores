RECIPE({
    type = "recipe",
    name = "titanium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { type = "item", name = "automated-factory-mk01", amount = 2 },
        { type = "item", name = "electric-mining-drill",  amount = 20 },
        { type = "item", name = "stainless-steel",        amount = 50 },
        { type = "item", name = "nexelit-plate",          amount = 50 },
        { type = "item", name = "titanium-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",       amount = 30 }
    },
    results = {
        { type = "item", name = "titanium-mine", amount = 1 }
    }
}):add_unlock("big-mines")

ITEM({
    type = "item",
    name = "titanium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-titanium.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "titanium-mine",
    stack_size = 10
})

ENTITY({
    type = "mining-drill",
    name = "titanium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-titanium.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "titanium-mine" },
    fast_replaceable_group = "titanium-mine",
    max_health = 600,
    resource_categories = { "titanium-rock" },
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -11.3, -11.3 }, { 11.3, 11.3 } },
    selection_box = { { -11.5, -11.5 }, { 11.5, 11.5 } },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity" },
    mining_speed = 20,
    energy_source =
    {
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            light_intensity_to_size_coefficient = 0,
            color = { 0, 0, 0 },
        },
        type = "burner",
        fuel_categories = { "drill" },
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0.06
        },
    },

    energy_usage = "2500kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, -11.65 },
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions[ "titanium-mine" ],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/cover.png",
                    width = 736,
                    height = 672,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-0, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/1.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-224, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/2.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-192, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/3.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-160, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/4.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-128, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/5.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-96, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/6.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-64, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/7.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(-32, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/8.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(0, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/9.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(32, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/10.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(64, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/11.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(96, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/12.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(128, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/13.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(160, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/14.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(192, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/15.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(224, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/16.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(256, 0)
                },
                {
                    filename = "__pyraworesgraphics__/graphics/entity/big-mines/titanium-mine/17.png",
                    width = 32,
                    height = 480,
                    line_length = 64,
                    frame_count = 200,
                    animation_speed = 0.2,
                    shift = util.by_pixel(288, 0)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = { filename = "__pyraworesgraphics__/sounds/titanium-mine.ogg", volume = 1.5 },
        idle_sound = { filename = "__pyraworesgraphics__/sounds/titanium-mine.ogg", volume = 0.3 },
        apparent_volume = 2.5
    }
})
