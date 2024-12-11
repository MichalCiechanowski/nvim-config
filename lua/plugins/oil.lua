return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		vim.keymap.set("n", "<leader>a", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
		default_file_explorer = true,
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, _)
				return name == "../"
			end,
			is_always_hidden = function(name, _)
				return name == "../"
			end,
		},
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
