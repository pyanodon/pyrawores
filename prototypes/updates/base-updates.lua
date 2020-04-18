
RECIPE('atomic-bomb'):remove_ingredient('uranium-235'):add_ingredient({type = "item", name = "yellow-cake", amount = 5})

data.raw.resource['coal'].autoplace = nil
data.raw['autoplace-control']['coal'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['coal'] then
      preset.basic_settings.autoplace_controls['coal'] = nil
    end
end

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
  energy_required = 4,
  ingredients = {
      {type = "fluid", name = "molten-iron", amount = 30},
      {type = "item", name = "borax", amount = 3},
      {type = "item", name = "sand-casting", amount = 1},
  },
  results = {
      {type = "item", name = "iron-stick", amount = 40}
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
  name = "casting-copper-cable",
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