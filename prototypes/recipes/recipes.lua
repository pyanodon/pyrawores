RECIPE {
    type = 'recipe',
    name = 'test',
    category = 'scrubber',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'coal', amount = 10},
    },
    results = {
        {type = 'item', name = 'iron-plate', amount = 3}
    },
    main_product = 'iron-plate'
}:add_unlock("machines-mk01")