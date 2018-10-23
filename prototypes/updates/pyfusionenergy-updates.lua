RECIPE('mixer'):replace_ingredient('iron-plate', 'aluminium-plate')

RECIPE('al-pulp-01'):change_category('mixer')
RECIPE('al-pulp-02'):change_category('agitator')
RECIPE('al-pulp-03'):change_category('agitator')
RECIPE('al-pulp-04'):change_category('agitator')
RECIPE('crystalized-sodium-aluminate'):remove_ingredient('steam'):add_ingredient({type = "fluid", name = "pressured-air", amount = 500})


RECIPE {
    type = "recipe",
    name = "al-tailings-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-tailings", amount = 300},
    },
    results = {
        {type = "fluid", name = "vanadates", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 75}
    },
    main_product = "vanadates",
    icon = "__pyfusionenergy__/graphics/icons/vanadates.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "q-2"
}:add_unlock("aluminium-mk03")