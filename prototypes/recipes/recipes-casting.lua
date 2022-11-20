
RECIPE {
    type = "recipe",
    name = "casting-gear",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 40},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "iron-gear-wheel", amount = 50}
    },
    main_product= "iron-gear-wheel",
    subgroup = "py-rawores-casting",
    order = "aza"
  }:add_unlock("casting-mk02")

  RECIPE {
    type = "recipe",
    name = "casting-pipe",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 50},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "pipe", amount = 30}
    },
    main_product= "pipe",
    subgroup = "py-rawores-casting",
    order = "aze"
  }:add_unlock("casting-mk02")

  RECIPE {
    type = "recipe",
    name = "casting-pipe-ug",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 250},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "pipe-to-ground", amount = 20}
    },
    main_product= "pipe-to-ground",
    subgroup = "py-rawores-casting",
    order = "azf"
  }:add_unlock("casting-mk02")

  RECIPE {
    type = "recipe",
    name = "casting-sticks",
    category = "casting",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 70},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "iron-stick", amount = 100}
    },
    main_product= "iron-stick",
    subgroup = "py-rawores-casting",
    order = "azb"
  }:add_unlock("casting-mk02")

  RECIPE {
    type = "recipe",
    name = "casting-copper-cable",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-copper", amount = 25},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "copper-cable", amount = 55}
    },
    main_product = "copper-cable",
    subgroup = "py-rawores-casting",
    order = "aza"
  }:add_unlock("casting-mk02")

  RECIPE {
    type = "recipe",
    name = "casting-tin-cable",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-copper", amount = 50},
        {type = "fluid", name = "molten-tin", amount = 50},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "tinned-cable", amount = 55}
    },
    main_product = "tinned-cable",
    subgroup = "py-rawores-casting",
    order = "azb"
  }:add_unlock("casting-mk02")

--SOLDER

RECIPE {
    type = "recipe",
    name = "molten-solder-0",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 10},
        {type = "fluid", name = "molten-lead", amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 20}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "molten-solder-1",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 10},
        {type = "fluid", name = "molten-lead", amount = 20},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 40}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk02")

RECIPE {
    type = "recipe",
    name = "molten-solder-2",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 30},
        {type = "fluid", name = "molten-copper", amount = 10},
        {type = "fluid", name = "molten-silver", amount = 10},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 60}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk03")

RECIPE {
    type = "recipe",
    name = "molten-solder-3",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 20},
        {type = "fluid", name = "molten-lead", amount = 50},
        {type = "fluid", name = "molten-silver", amount = 10},
        {type = "fluid", name = "tar", amount = 50},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 140}
    },
    main_product = 'molten-solder',
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("solder-mk04")

RECIPE {
    type = "recipe",
    name = "casting-engine-unit",
    category = "casting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "molten-aluminium", amount = 50},
        {type = "item", name = "duralumin", amount = 3},
        {type = "item", name = "sand-casting", amount = 5}
    },
    results = {
        {type = "item", name = "engine-unit", amount = 10}
    },
    main_product = 'engine-unit',
    subgroup = "py-rawores-casting",
    order = "e"
}:add_unlock("casting-mk03")

RECIPE {
    type = "recipe",
    name = "casting-niobium-pipe",
    category = "casting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "niobium-complex", amount = 50},
        {type = "item", name = "sand-casting", amount = 5}
    },
    results = {
        {type = "item", name = "niobium-pipe", amount = 20}
    },
    main_product = 'niobium-pipe',
    subgroup = "py-rawores-casting",
    order = "n"
}:add_unlock("casting-mk03")

RECIPE {
    type = "recipe",
    name = "casting-niobium-pipe-underground",
    category = "casting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "niobium-complex", amount = 50},
        {type = "item", name = "sand-casting", amount = 5}
    },
    results = {
        {type = "item", name = "niobium-pipe-to-ground", amount = 30}
    },
    main_product = 'niobium-pipe-to-ground',
    subgroup = "py-rawores-casting",
    order = "nu"
}:add_unlock("casting-mk03")

RECIPE {
    type = "recipe",
    name = "casting-drill-heads",
    category = "casting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-stainless-steel", amount = 50},
        {type = "fluid", name = "molten-titanium", amount = 50},
        {type = "fluid", name = "molten-chromium", amount = 50},
        {type = "item", name = "sand-casting", amount = 5}
    },
    results = {
        {type = "item", name = "drill-head", amount = 40}
    },
    main_product = 'drill-head',
    subgroup = "py-rawores-casting",
    order = "d"
}:add_unlock("drill-head-mk03")

RECIPE {
    type = "recipe",
    name = "casting-equipment-chassi",
    category = "casting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "molten-copper", amount = 100},
        {type = "fluid", name = "molten-aluminium", amount = 100},
        {type = "fluid", name = "molten-tin", amount = 100},
        {type = "item", name = "sand-casting", amount = 5}
    },
    results = {
        {type = "item", name = "equipment-chassi", amount = 20}
    },
    main_product = 'equipment-chassi',
    subgroup = "py-rawores-casting",
    order = "ec"
}:add_unlock("casting-mk03")
