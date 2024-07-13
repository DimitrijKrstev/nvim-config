return {
	"nyoom-engineering/oxocarbon.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		-- Function for every applied theme
		vim.cmd([[colorscheme oxocarbon]])
	end,
}

