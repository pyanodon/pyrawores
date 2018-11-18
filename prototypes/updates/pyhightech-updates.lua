RECIPE('al-pulp-01'):replace_ingredient('boric-acid', 'phosphoric-acid')
RECIPE('powdered-ralesia-seeds'):change_category('pulp')
RECIPE('glass-fiber'):add_ingredient({type = "item", name = "sodium-sulfate", amount =1})
RECIPE('phosphate-glass'):add_ingredient({type = "item", name = "sodium-sulfate", amount =1})
RECIPE("nexelit-matrix"):replace_ingredient("wood", "epoxy")
RECIPE('rayon'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =5})
RECIPE('fiberboard'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('micro-fiber'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('phenolicboard'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =3})
RECIPE('epoxy'):add_ingredient({type = "item", name = "sodium-hydroxide", amount =5})
--RECIPE('outlet-gas-3'):add_result({type = "fluid", name = "ammonia", amount = 50})

RECIPE('cresylic-acid'):remove_ingredient('aromatics'):add_ingredient({type = 'item', name = 'phenol', amount = 15})
RECIPE('outlet-gas-02'):change_category('fbreactor')


RECIPE('distilator-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 15}):add_ingredient({type = "item", name = "biopolymer", amount = 10}):add_ingredient({type = "item", name = "aerogel", amount = 10})
RECIPE('distilator-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 6}):add_ingredient({type = "item", name = "var-josephson-junction", amount = 4})

RECIPE('advanced-foundry-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15})
RECIPE('advanced-foundry-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 6}):add_ingredient({type = "item", name = "pi-josephson-junction", amount = 4})

RECIPE('automated-factory-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 25}):add_ingredient({type = "item", name = "volumetric-capacitor", amount = 10}):add_ingredient({type = "item", name = "biopolymer", amount = 10})
RECIPE('automated-factory-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 4})

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

RECIPE {
    type = 'recipe',
    name = 'biofilm-pyht',
    category = 'nano',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'sub-denier-microfiber', amount = 1},
        {type = 'item', name = 'resilin', amount = 1},
        {type = 'fluid', name = 'nitrogen', amount = 500}
    },
    results = {
        {type = 'item', name = 'biofilm', amount = 15},
    },
    main_product = 'biofilm'
}:add_unlock("nano-tech")

RECIPE {
    type = "recipe",
    name = "xylenol-3",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "benzene", amount = 50},
        {type = "fluid", name = "aromatics", amount = 100},
    },
    results = {
        {type = "fluid", name = "xylenol", amount = 50},
    },
    main_product = "xylenol",
    subgroup = "py-rawores-fluids",
    order = "q-1"
}:add_unlock("iron-mk04"):change_category('mixer')

RECIPE {
    type = "recipe",
    name = "ammonium-chloride-2",
    category = "fbreactor", 
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
        {type = "fluid", name = "ammonia", amount = 100},
    },
    results = {
        {type = "item", name = "ammonium-chloride", amount = 5},
    },
    main_product = "ammonium-chloride",
    icon = "__pyrawores__/graphics/icons/ammonium-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-items",
    order = "q-2"
}:add_unlock("machines-mk02")