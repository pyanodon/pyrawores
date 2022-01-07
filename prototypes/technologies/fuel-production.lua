local table = require('__stdlib__/stdlib/utils/table')

local fp = TECHNOLOGY('fuel-production')

TECHNOLOGY {
    type = "technology",
    name = "fuel-production-2",
    icon = fp.icon,
    icon_size = fp.icon_size,
    order = "c-a",
    prerequisites = { 'fuel-production' },
    effects = fp.effects,
    unit = fp.unit
}

TECHNOLOGY('fuel-production'):remove_pack('chemical-science-pack')

