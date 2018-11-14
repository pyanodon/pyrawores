RECIPE {
    type = "recipe",
    name = "lead-mine",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"automated-factory", 2},
        {"iron-plate", 60},
        {"jaw-crusher", 1},
        {"electronic-circuit", 40} --add pyht hyperelastic material/intelligent unit
        
        -- addpyfe super-alloy/control-unit
        -- add special drill made of titanium-aramide-(pyfe)molybdenium alloy
    },
    results = {
        {"lead-mine", 1}
    }
}:add_unlock("lead-mk03")

ITEM {
    type = "item",
    name = "lead-mine",
    icon = "__pyrawores__/graphics/icons/mega-lead.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "lead-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "lead-mine",
    icon = "__pyrawores__/graphics/icons/mega-lead.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "lead-mine"},
    fast_replaceable_group = "lead-mine",
    max_health = 600,
    resource_categories = {"lead-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 5.8,
    energy_source =
    {
      type = "burner",
      fuel_category = "drill",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.1,
    },
    energy_usage = "2000kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/lead-mine/h1.png",
                width = 128,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, -10)
            },
            {
                filename = "__pyrawores__/graphics/entity/lead-mine/h2.png",
                width = 128,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(16, -10)
            },
            {
                filename = "__pyrawores__/graphics/entity/lead-mine/h3.png",
                width = 101,
                height = 384,
                line_length = 16,
                frame_count = 70,
                animation_speed = 0.2,
                shift = util.by_pixel(130, -10)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/lead-mine.ogg", volume = 1.4},
        idle_sound = {filename = "__pyrawores__/sounds/lead-mine.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
