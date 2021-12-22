
    RECIPE {
        type = 'recipe',
        name = 'copper-solution',
        category = 'chemistry', --pyfe mixer
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'fluid', name = 'water', amount = 400},
            {type = 'item', name = 'grade-4-copper', amount = 3},
            {type = 'item', name = 'salt', amount = 6}
        },
        results = {
            {type = 'fluid', name = 'copper-solution', amount = 47}
        },
        main_product = 'copper-solution',
        subgroup = 'py-rawores-copper',
        order = 'q-2'
    }:add_unlock('copper-mk03'):change_category('mixer')

FLUID {
    type = 'fluid',
    name = 'copper-solution',
    icon = '__pyraworesgraphics__/graphics/icons/copper-solution.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.952, g = 0.556, b = 0.0},
    flow_color = {r = 0.952, g = 0.556, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = 'py-rawores-copper',
    order = 'c'
}
