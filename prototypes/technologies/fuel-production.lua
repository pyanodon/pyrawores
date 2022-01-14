local table = require('__stdlib__/stdlib/utils/table')

local fp = TECHNOLOGY('fuel-production')

TECHNOLOGY {
    type = "technology",
    name = "fuel-production-2",
    icon = fp.icon,
    icon_size = fp.icon_size,
    order = "c-a",
    prerequisites = { 'fuel-production' },
    dependencies = { 'fuel-production' },
    effects = table.deep_copy(fp.effects),
    unit = table.deep_copy(fp.unit)
}

fp:remove_pack('chemical-science-pack')
fp.effects = {}
