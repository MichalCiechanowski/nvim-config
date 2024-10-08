return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		vim.keymap.set("n", "<leader>a", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
		default_file_explorer = true,
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
