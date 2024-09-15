
    RECIPE {
        type = 'recipe',
        name = 'nexelit-pulp-01',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 20,
        ingredients = {
            {type = 'item', name = 'fine-nexelit-powder', amount = 10},
            {type = 'fluid', name = 'glycerol', amount = 25},
            {type = 'fluid', name = 'syngas', amount = 75}
            --pyfe sodium chlorate
        },
        results = {
            {type = 'fluid', name = 'nexelit-pulp-01', amount = 100}
        },
        main_product = 'nexelit-pulp-01',
        subgroup = 'py-rawores-nexelit',
        order = 'q-2'
    }:add_unlock('nexelit-mk03')

FLUID {
    type = 'fluid',
    name = 'nexelit-pulp-01',
    icon = '__pyraworesgraphics__/graphics/icons/nexelit-pulp-01.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_flow_rate = 100,
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = 'py-rawores-nexelit',
    order = 'c'
}
