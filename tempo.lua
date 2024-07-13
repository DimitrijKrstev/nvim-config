return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()  
    local configs = require("nvim-treesitter.configs")
    configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "java", "query", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
  	end
  },
  {
    "nvim-tree/nvim-tree.lua",
		build = ":TSUpdate",
  	version = "*",
  	lazy = false,
  	dependencies = {
  		"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
  		require("nvim-tree").setup {
    }
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {},
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme oxocarbon]])
    end,
  }
}