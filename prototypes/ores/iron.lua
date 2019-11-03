
data.raw.resource['iron-ore'].minable.results =
	{
		{type = "item", name = "ore-iron-high", amount_min = 1, amount_max = 1, probability = 0.8},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.1},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.075},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}
	
data.raw.resource['ore-iron-medium'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['ore-iron-medium'].name = 'ore-iron-medium'
data.raw.resource['ore-iron-medium'].minable.results =
	{
		{type = "item", name = "ore-iron-high", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.175},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}
data.raw.resource['ore-iron-medium'].autoplace = {}

data.raw.resource['ore-iron-low'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['ore-iron-low'].name = 'ore-iron-low'
data.raw.resource['ore-iron-low'].minable.results =
	{
		{type = "item", name = "ore-iron-high", amount_min = 1, amount_max = 1, probability = 0.15},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.5},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.15}
	}
data.raw.resource['ore-iron-low'].autoplace = {}
	
data.raw.resource['ore-iron-trace'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['ore-iron-trace'].name = 'ore-iron-trace'
data.raw.resource['ore-iron-trace'].minable.results =
	{
		{type = "item", name = "ore-iron-high", amount_min = 1, amount_max = 1, probability = 0.05},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.3},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.45}
	}
data.raw.resource['ore-iron-trace'].autoplace = {}