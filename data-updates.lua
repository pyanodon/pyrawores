require('stdlib/data/data').create_data_globals()

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))

TECHNOLOGY('crusher'):add_prereq('machines-mk01')
RECIPE('hydrocyclone'):replace_ingredient('centrifuge', 'classifier')
RECIPE('hydrocyclone'):remove_unlock('advanced-mining-facilities'):add_unlock('machines-mk02')