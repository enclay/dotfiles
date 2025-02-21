local lazy = require("lazy")

lazy.setup({
-- Themes
  "marko-cerovac/material.nvim",

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

-- Copilot
  "zbirenbaum/copilot.lua",
  "zbirenbaum/copilot-cmp",

-- Completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

-- Snacks
  "folke/snacks.nvim",
})
