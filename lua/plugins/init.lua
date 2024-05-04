return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
        "html-lsp", "css-lsp",
        "typescript-language-server",  "eslint_d",
        "prettier",
        "rust-analyzer",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        -- defaults 
  			"vim", "lua", "vimdoc",

        -- web dev
        "html", "css", "javascript", "typescript",

        -- web server dev
        "go",

       -- low level
        "rust",
  		},
  	},
  },
}
