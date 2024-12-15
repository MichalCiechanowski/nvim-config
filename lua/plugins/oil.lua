return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
		-- view_options = {
		-- 	show_hidden = true,
		-- 	is_hidden_file = function(name)
		-- 		return name == "../"
		-- 	end,
		-- },
	},
	vim.keymap.set("n", "<leader>a", function()
		vim.cmd("Oil")
	end, { desc = "Open parent directory" }),
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
