require('stdlib/data/data').create_data_globals()

local default = setmetatable({}, require("stdlib/utils/classes/string_array"))

TECHNOLOGY('crusher'):add_prereq('machines-mk01')