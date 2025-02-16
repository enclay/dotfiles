local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = { "pyright", "ts_ls", "lua_ls" }
})

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",  -- Turns off strict type checking
        diagnosticMode = "workspace",  -- Prevents excessive linting
        useLibraryCodeForTypes = true,  -- Avoids missing type definitions
      },
    },
  },
})

lspconfig.ts_ls.setup({})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      telemetry = { enable = false }
    },
  },
})

lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      procMacro = { enable = true },
    }
  }
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-g>", "<cmd>ClangdSwitchSourceHeader<CR>", opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
