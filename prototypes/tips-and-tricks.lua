data:extend(
{
	{
		type = "tips-and-tricks-item",
		name = "rawores",
		category = "wiki-py",
		indent = 1,
		order = "e",
		is_title = true,
	},
	{
		type = "tips-and-tricks-item",
		name = "big-mines",
		category = "wiki-py",
		indent = 2,
		order = "ea",
        tag = '[entity=lead-mine]',
        trigger =
        {
            type = "research",
            technology = "big-mines"
        },
	},
})
