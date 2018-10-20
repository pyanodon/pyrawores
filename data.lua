require("stdlib/data/data").create_data_globals()

require("prototypes/item-groups")
require("prototypes/recipe-categories")

--require('prototypes/recipes/recipes')
require('prototypes/items/items')

--(( RESOURCEs ))--
require("prototypes.ores.quartz")
--))

--(( Technology ))--
require("prototypes/technologies/machines")
require("prototypes/technologies/quartz")

--(( BUILDINGS ))--
require("prototypes/buildings/quartz-drill-mk01")
require("prototypes/buildings/scrubber-mk01")
require("prototypes/buildings/flotation-cell-mk01")
--))

--(( RECIPES ))--
--require("prototypes/recipes/recipes")
require("prototypes/recipes/recipes-quartz")

--(( FLUIDs ))--
require("prototypes/fluids/quartz-pulp-01")
require("prototypes/fluids/quartz-pulp-02")
require("prototypes/fluids/prepared-quartz")
require("prototypes/fluids/high-grade-quartz-pulp")