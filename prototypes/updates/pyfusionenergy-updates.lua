TECHNOLOGY('crusher'):add_prereq('machines-mk01')

RECIPE('hydrocyclone'):replace_ingredient('centrifuge', 'classifier')
RECIPE('hydrocyclone'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('mixer'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk01')
RECIPE('mixer'):replace_ingredient('iron-plate', 'aluminium-plate')

RECIPE('secondary-crusher'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('automated-screener'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')

RECIPE('centrifugal-pan'):remove_unlock('diamond-mining'):add_unlock('machines-mk03')

RECIPE('agitador'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk03')
RECIPE('sodium-clhorate'):remove_unlock('vanadium-processing'):add_unlock('machines-mk02'):change_category('electrolyzer')

RECIPE('purified-quartz'):change_category('pan')
RECIPE('prepared-quartz'):change_category('pan')
RECIPE('quartz-pulp-01'):change_category('hydrocyclone')
RECIPE('al-pulp-01'):change_category('mixer')
RECIPE('al-pulp-02'):change_category('agitator')
RECIPE('al-pulp-03'):change_category('agitator')
RECIPE('al-pulp-04'):change_category('agitator')
RECIPE('crystalized-sodium-aluminate'):remove_ingredient('steam'):add_ingredient({type = "fluid", name = "pressured-air", amount = 500})
RECIPE('sodium-aluminate'):replace_result('water','al-tailings')

RECIPE('grade-4-chromite'):change_category('hydrocyclone')
RECIPE('grade-2-chromite-beneficiation'):change_category('screener')
RECIPE('chromite-pulp-01'):change_category('agitator')

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
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("aluminium-mk03")