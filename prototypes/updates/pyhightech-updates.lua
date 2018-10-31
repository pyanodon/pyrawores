RECIPE('al-pulp-01'):replace_ingredient('boric-acid', 'phosphoric-acid')
RECIPE('powdered-ralesia-seeds'):change_category('pulp')
RECIPE('starch'):add_ingredient({type = "item", name = "fiberboard", amount =1})
RECIPE('high-grade-alumina'):add_ingredient({type = "item", name = "graphite", amount =3})
RECIPE('glass-fiber'):add_ingredient({type = "item", name = "sodium-sulfate", amount =1})
RECIPE('phosphate-glass'):add_ingredient({type = "item", name = "sodium-sulfate", amount =1})
RECIPE("nexelit-matrix"):replace_ingredient("wood", "epoxy")
RECIPE('rayon'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =5})
RECIPE('fiberboard'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('micro-fiber'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('phenolicboard'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('epoxy'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =5})


RECIPE {
    type = "recipe",
    name = "hydrogen-chloride-2",
    category = "oil-processing", --pyfe mixer
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "phosphine-gas", amount = 5},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
        {type = "fluid", name = "phosphoric-acid", amount = 15},
        {type = "fluid", name = "oxygen", amount = 20},
    },
    main_product= "hydrogen-chloride",
    icon = "__pyrawores__/graphics/icons/hydrogen-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "j"
}:add_unlock("machines-mk01"):change_category('mixer')

RECIPE {
    type = 'recipe',
    name = 'fiberboard-2',
    category = 'pulp',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'treated-wood', amount = 3},
        {type = 'item', name = 'raw-fiber', amount = 5},
        {type = "item", name = "sodium-sulfate", amount = 1},
        {type = "item", name = "sodium-hydroxide", amount = 5},
        {type = 'fluid', name = 'steam', amount = 500, temperature = 165}
    },
    results = {
        {type = 'item', name = 'fiberboard', amount = 8},
    },
    main_product = 'fiberboard'
}:add_unlock("machines-mk02")