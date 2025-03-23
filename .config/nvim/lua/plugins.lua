local lazy = require("lazy")

lazy.setup({
-- Themes
  "slugbyte/lackluster.nvim",

-- Highlighting
  "nvim-treesitter/nvim-treesitter",

-- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

 -- Telescope
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope-file-browser.nvim",
  "nvim-telescope/telescope-frecency.nvim",
  "kkharji/sqlite.lua",

-- Completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",

-- Snacks
  "folke/snacks.nvim",
})
