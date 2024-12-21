local pokemon = { "monferno", "garchomp" }
return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		dashboard = {
			sections = {
				{
					section = "terminal",
					cmd = 'pokemon-colorscripts -r --no-title -n "'
						.. pokemon[math.random(1, #pokemon)]
						.. '"; sleep .1',
					random = 10,
					pane = 1,
					indent = 10,
					height = 20,
				},
				{ section = "keys", gap = 1, padding = 1 },
			},
		},
	},
}
