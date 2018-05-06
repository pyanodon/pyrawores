require('stdlib/data/data').create_data_globals()

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))


RECIPE('jaw-crusher'):remove_unlock('crusher'):add_unlock('machines-mk01')
RECIPE('jaw-crusher'):subgroup_order('py-rawores-buildings','a')
RECIPE('hydrocyclone'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')
RECIPE('glass-sand'):remove_result('glass'):add_result({type = 'item', name = 'glass', amount = 2})