
if settings.startup['processing-mod'].value then

data.raw.resource['copper-ore'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.8},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.1},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.075},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.05}
	}

data.raw.resource['ore-copper-medium'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['ore-copper-medium'].name = 'ore-copper-medium'
data.raw.resource['ore-copper-medium'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.175},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}
data.raw.resource['ore-copper-medium'].autoplace = {}

data.raw.resource['ore-copper-low'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['ore-copper-low'].name = 'ore-copper-low'
data.raw.resource['ore-copper-low'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.15},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.5},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.15}
	}
data.raw.resource['ore-copper-low'].autoplace = {}

data.raw.resource['ore-copper-trace'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['ore-copper-trace'].name = 'ore-copper-trace'
data.raw.resource['ore-copper-trace'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.05},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.3},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.45}
	}
data.raw.resource['ore-copper-trace'].autoplace = {}

end