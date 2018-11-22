RECIPE {
    type = "recipe",
    name = "grade-1-ti",
    category = "solid-separator",--pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-titanium", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-ti", amount = 1},
        {type = "item", name = "grade-2-ti", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-ti",
    icon = "__pyrawores__/graphics/icons/ore-titanium-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("titanium-mk01"):change_category('screener')