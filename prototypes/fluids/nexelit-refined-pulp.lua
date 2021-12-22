
    RECIPE {
        type = 'recipe',
        name = 'nexelit-refined-pulp',
        category = 'electrolyzer',
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'fluid', name = 'nexelit-pulp-04', amount = 100},
            {type = 'item', name = 'iron-oxide', amount = 10},
            {type = 'item', name = 'aluminium-plate', amount = 2}
        },
        results = {
            {type = 'fluid', name = 'nexelit-refined-pulp', amount = 100},
            {type = 'fluid', name = 'nexelit-slurry', amount = 100}
        },
        main_product = 'nexelit-refined-pulp',
        subgroup = 'py-rawores-nexelit',
        order = 'q-2'
    }:add_unlock('nexelit-mk03')

FLUID {
    type = 'fluid',
    name = 'nexelit-refined-pulp',
    icon = '__pyraworesgraphics__/graphics/icons/nexelit-refined-pulp.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 0, g = 0.545, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = 'py-rawores-nexelit',
    order = 'c'
}
