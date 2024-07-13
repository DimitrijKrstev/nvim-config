return {
	"nvim-tree/nvim-tree.lua",
	build = ":TSUpdate",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			auto_reload_on_write = true,
			disable_netrw = true,
			hijack_cursor = false,
			hijack_netrw = true,
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			view = {
				width = 30,
				side = "left",
			},
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
			filters = {
				dotfiles = true,
				custom = {},
			},
			actions = {
				open_file = {
					resize_window = true,
				},
			},
		})

		-- Recommended settings from nvim-tree docs
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
