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
RECIPE("boron-carbide"):replace_ingredient("coke", "carbon")
--RECIPE('outlet-gas-3'):add_result({type = "fluid", name = "ammonia", amount = 50})
RECIPE('high-flux-core'):replace_ingredient('liquid-pure-air', 'liquid-nitrogen')
RECIPE('diode-core'):replace_ingredient('liquid-pure-air', 'liquid-nitrogen')
RECIPE('capacitor-termination'):replace_ingredient('boric-acid', 'liquid-nitrogen')
RECIPE('carbon-aerogel'):replace_ingredient('syngas', 'nitrogen')
RECIPE('superconductor'):replace_ingredient('liquid-helium', 'liquid-nitrogen')
RECIPE("phosphate-glass"):replace_ingredient('glass-fiber', 'crushed-quartz')
RECIPE("silicon-wafer"):add_ingredient({type = 'item', name = 'crushed-quartz', amount = 2})
RECIPE("nano-wires"):add_ingredient({type = 'item', name = 'gold-plate', amount = 10})
RECIPE("capacitor1"):replace_ingredient('copper-plate', 'tin-plate')
RECIPE("resitor1"):replace_ingredient('iron-plate', 'tin-plate'):add_ingredient({type = 'item', name = 'glass', amount = 1})
RECIPE("resitor3"):add_ingredient({type = 'item', name = 'nickel-plate', amount = 2})
RECIPE("capacitor2"):replace_ingredient('steel-plate', 'aluminium-plate'):replace_ingredient('cermet', 'sodium-aluminate')
RECIPE("inductor3"):add_ingredient({type = 'item', name = 'gold-plate', amount = 1})
RECIPE("re-tin"):replace_ingredient('iron-plate', 'tin-plate')
RECIPE("capacitor-termination"):replace_ingredient('steel-plate', 'nickel-plate'):replace_ingredient('copper-plate', 'tin-plate'):add_ingredient({type = 'item', name = 'silver-plate', amount = 1})
RECIPE("sodium-silicate"):replace_ingredient('phenol', 'sodium-hydroxide')
RECIPE("colloidal-silica"):replace_ingredient('niobium-plate', 'lead-plate')
RECIPE("resorcinol"):replace_ingredient('phenol', 'sodium-hydroxide')
RECIPE("carbon-aerogel"):replace_ingredient('silicon', 'high-grade-quartz')
RECIPE("zinc-acetate"):replace_ingredient('stone-brick', 'zinc-plate')
RECIPE("ndfeb-alloy"):replace_ingredient('carbon-dioxide', 'oxygen')
RECIPE("supercapacitor-shell"):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE("lithium-chloride"):replace_ingredient('sulfuric-acid', 'hydrogen-chloride')
RECIPE("lithium-niobate"):replace_ingredient('chromium', 'lithium-chloride')
RECIPE("syngas-methane"):replace_ingredient('niobium-plate', 'nickel-plate')
RECIPE("methane-methanal"):replace_ingredient('water', 'oxygen')
RECIPE("paramagnetic-material"):replace_ingredient('iron-plate', 'aluminium-plate')
RECIPE("valve"):add_ingredient({type = 'item', name = 'glass', amount = 1})
RECIPE("pcb2"):add_ingredient({type = 'item', name = 'tin-plate', amount = 5})
RECIPE("pcb3"):add_ingredient({type = 'item', name = 'tin-plate', amount = 2})
RECIPE("pcb4"):add_ingredient({type = 'item', name = 'lead-plate', amount = 2})
RECIPE("microchip"):add_ingredient({type = 'item', name = 'tin-plate', amount = 5})
RECIPE("crude-cermet"):add_ingredient({type = 'item', name = 'ore-nickel', amount = 5})
RECIPE("diode"):add_ingredient({type = 'item', name = 'tin-plate', amount = 1})
RECIPE("bisphenol-a"):add_ingredient({type = 'fluid', name = 'hydrogen-chloride', amount = 50})
RECIPE("pdms"):add_ingredient({type = 'fluid', name = 'hydrogen-chloride', amount = 50})
RECIPE("nic-core"):add_ingredient({type = 'item', name = 'nickel-plate', amount = 2}):add_ingredient({type = 'fluid', name = 'hydrogen', amount = 100})
RECIPE("processor"):add_ingredient({type = 'item', name = 'gold-plate', amount = 2}):add_ingredient({type = 'item', name = 'aluminium-plate', amount = 2})
RECIPE("capacitor-core"):add_ingredient({type = 'item', name = 'sodium-hydroxide', amount = 30})
RECIPE("heavy-fermion"):add_ingredient({type = 'item', name = 'gold-plate', amount = 5})
RECIPE("nxag-matrix"):add_ingredient({type = 'item', name = 'silver-plate', amount = 4})
RECIPE("paradiamatic-resistor"):add_ingredient({type = 'item', name = 'lead-plate', amount = 4})
RECIPE("zinc-nanocompound"):add_ingredient({type = 'item', name = 'sodium-hydroxide', amount = 10})
RECIPE("csle-diode"):add_ingredient({type = 'item', name = 'salt', amount = 50})
RECIPE("re-magnet"):add_ingredient({type = 'item', name = 'nickel-plate', amount = 2})
RECIPE("superconductor"):add_ingredient({type = 'item', name = 'gold-plate', amount = 1})
RECIPE("nanocrystaline-core"):add_ingredient({type = 'item', name = 'gold-plate', amount = 2})
RECIPE("supercapacitor-core"):add_ingredient({type = 'item', name = 'silver-plate', amount = 2})
RECIPE("glycerol2"):add_ingredient({type = 'item', name = 'sodium-hydroxide', amount = 5})
RECIPE("nems"):add_ingredient({type = 'item', name = 'glass', amount = 4})
RECIPE("volumetric-capacitor"):add_ingredient({type = 'item', name = 'glass', amount = 5})
RECIPE("yag-laser-module"):add_ingredient({type = 'item', name = 'aluminium-plate', amount = 3})
RECIPE("diamagnetic-material"):add_ingredient({type = 'item', name = 'lead-plate', amount = 2})
RECIPE("black-liquor"):add_ingredient({type = 'fluid', name = 'oxygen', amount = 100})
RECIPE("plastic3"):add_ingredient({type = 'fluid', name = 'hydrogen', amount = 50})




RECIPE('cresylic-acid'):remove_ingredient('aromatics'):add_ingredient({type = 'item', name = 'phenol', amount = 15})
RECIPE('outlet-gas-02'):change_category('fbreactor')


RECIPE('distilator-mk03'):add_ingredient({type = "item", name = "phosphate-glass", amount = 15}):add_ingredient({type = "item", name = "biopolymer", amount = 10}):add_ingredient({type = "item", name = "aerogel", amount = 10})
RECIPE('distilator-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 6}):add_ingredient({type = "item", name = "var-josephson-junction", amount = 4})

RECIPE('advanced-foundry-mk03'):add_ingredient({type = "item", name = "diamagnetic-material", amount = 20}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 15})
RECIPE('advanced-foundry-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 6}):add_ingredient({type = "item", name = "pi-josephson-junction", amount = 4})

RECIPE('automated-factory-mk03'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 25}):add_ingredient({type = "item", name = "volumetric-capacitor", amount = 10}):add_ingredient({type = "item", name = "biopolymer", amount = 10})
RECIPE('automated-factory-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "quantum-vortex-storage-system", amount = 4})

RECIPE('ball-mill-mk03'):add_ingredient({type = "item", name = "heavy-fermion", amount = 40}):add_ingredient({type = "item", name = "re-magnet", amount = 30}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 10})
RECIPE('ball-mill-mk04'):replace_ingredient('control-unit', 'intelligent-unit'):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})

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

RECIPE {
    type = "recipe",
    name = "ammonia2",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 300},
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 100},
    },
}:add_unlock("advanced-electronics")

RECIPE {
    type = "recipe",
    name = "pa-oxygen",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "graphite", amount = 5},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "fluid", name = "oxygen", amount = 200},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "oxygen",
    icon = "__pyhightech__/graphics/icons/pa/pa-oxygen.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-helium",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 1000},
        {type = "item", name = "proton-donor", amount = 20},
    },
    results = {
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "helium",
    icon = "__pyhightech__/graphics/icons/pa/pa-helium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "pa-hydrogen",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "proton-receiver", amount = 4},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 1000},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "hydrogen",
    icon = "__pyhightech__/graphics/icons/pa/pa-hydrogen.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "pa-boron",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "carbon-dust", amount = 5},
        {type = "item", name = "proton-receiver", amount = 2},
    },
    results = {
        {type = "item", name = "boron", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "boron",
    icon = "__pyhightech__/graphics/icons/pa/pa-boron.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-coal2",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 1000},
        {type = "item", name = "proton-receiver", amount = 2},
    },
    results = {
        {type = "item", name = "coal", amount = 100},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "coal",
    icon = "__pyhightech__/graphics/icons/pa/pa-coal.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-aluminium",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "silicon", amount = 10},
        {type = "item", name = "proton-receiver", amount = 1},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "aluminium-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-aluminium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-nickel",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-receiver", amount = 1},
    },
    results = {
        {type = "item", name = "nickel-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "nickel-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-nickel.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-zinc",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 1},
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "zinc-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-zinc.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-silver",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "silver-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "silver-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-silver.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-gold",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "silver-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "gold-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "gold-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-gold.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-vanadium2",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "vanadium-oxide", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "vanadium-oxide",
    icon = "__pyhightech__/graphics/icons/pa/pa-vanadium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("vanadium-processing")


RECIPE {
    type = 'recipe',
    name = 'fertilizer-2',
    category = 'mixer',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'bones', amount = 6},
        {type = 'item', name = 'urea', amount = 5},
        {type = 'item', name = 'ash', amount = 30},
        {type = 'item', name = 'ammonium-chloride', amount = 20}
    },
    results = {
        {type = 'item', name = 'py-fertilizer', amount = 15}
    }
}:add_unlock('basic-electronics')