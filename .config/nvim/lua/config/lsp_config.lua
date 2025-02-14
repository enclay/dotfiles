require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "ts_ls", "lua_ls" }
})

local lspconfig = require("lspconfig")

lspconfig.pyright.setup {}
lspconfig.ts_ls.setup {}

-- Special settings for Lua LSP
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      telemetry = { enable = false }
    },
  },
})

-- Special settings for Rust LSP
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
