

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
        {type = "item", name = "iron-gear-wheel", amount = 20}
    },
    main_product= "iron-gear-wheel",
    subgroup = "py-rawores-iron",
    order = "aza"
  }:add_unlock("iron-mk02")

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
    subgroup = "py-rawores-iron",
    order = "aze"
  }:add_unlock("iron-mk02")

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
    subgroup = "py-rawores-iron",
    order = "azf"
  }:add_unlock("iron-mk02")

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
    subgroup = "py-rawores-iron",
    order = "azb"
  }:add_unlock("iron-mk02")

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
        {type = "item", name = "copper-cable", amount = 50}
    },
    main_product = "copper-cable",
    subgroup = "py-rawores-copper",
    order = "aza"
  }:add_unlock("copper-mk02")

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
        {type = "item", name = "tinned-cable", amount = 50}
    },
    main_product = "tinned-cable",
    subgroup = "py-rawores-tin",
    order = "azb"
  }:add_unlock("tin-mk02")

  --SOLDER


RECIPE {
    type = "recipe",
    name = "molten-solder-0",
    category = "bof",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 10},
        {type = "fluid", name = "molten-lead", amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-solder", amount = 20}
    },
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk02")

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
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk02")

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
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk03")

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
    subgroup = "py-rawores-solder",
    order = "j"
}:add_unlock("lead-mk04")
