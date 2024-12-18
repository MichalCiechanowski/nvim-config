return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
	},
	vim.keymap.set("n", "<leader>a", function()
		require("oil").setup({ view_options = { show_hidden = false } })
		vim.cmd("Oil")
	end, { desc = "Open parent directory" }),
	vim.keymap.set("n", "<leader>A", function()
		require("oil").setup({ view_options = { show_hidden = true } })
		vim.cmd("Oil")
	end, { desc = "Open parent directory with .dotfiles" }),
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
