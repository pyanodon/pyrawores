local table = require('__stdlib__/stdlib/utils/table')

local fp = table.deepcopy(data.raw.technology['fuel-production'])

TECHNOLOGY {
    type = "technology",
    name = "fuel-production-1",
    icon = fp.icon,
    icon_size = fp.icon_size,
    order = "c-a",
    prerequisites = {"fluid-separation"},
    effects = {},
    unit = fp.unit
}

TECHNOLOGY {
    type = "technology",
    name = "fuel-production-2",
    icon = fp.icon,
    icon_size = fp.icon_size,
    order = "c-a",
    prerequisites = fp.prerequisites,
    effects = fp.effects,
    unit = fp.unit
}

data.raw.technology['fuel-production'] = nil

TECHNOLOGY('fuel-production-1'):remove_pack('chemical-science-pack')
TECHNOLOGY('fuel-production-2'):add_prereq('fuel-production-1')
