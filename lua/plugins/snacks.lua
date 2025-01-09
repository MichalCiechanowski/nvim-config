math.randomseed(os.time())

local pokemon = {
	-- gen 1
	"charizard",
	"blastoise",
	"raichu",
	"machamp",
	"slaking",
	"gengar",
	"gyarados",
	"snorlax",
	"dragonite",
	-- gen 2
	"sudowoodo",
	"scizor",
	-- gen 3
	"swampert",
	"blaziken",
	"gardevoir",
	"salamence",
	"metagross",
	-- "kyogre",
	-- "rayquaza",
	-- gen 4
	"torterra",
	"infernape",
	"empoleon",
	"staraptor",
	"luxray",
	"roserade",
	"bronzong",
	"garchomp",
	-- "drapion",
	"rhyperior",
	"electivire",
	"magmortar",
	"gliscor",
	"darkrai",
	-- gen 5
	"conkeldurr",
	"krookodile",
	"crustle",
	"carracosta",
	"haxorus",
	"druddigon",
	"hydreigon",
	-- gen 6
	"greninja",
	"noivern",
	-- gen 7
	"turtonator",
	"kommo-o",
	-- gen 8
	"rillaboom",
	"corviknight",
	"drednaw",
	"coalossal",
	-- "sirfetchd",
	"dragapult",
}

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
					pane = 1,
					indent = 10,
					height = 20,
				},
				{ section = "keys", gap = 1, padding = 1 },
			},
		},
	},
}
