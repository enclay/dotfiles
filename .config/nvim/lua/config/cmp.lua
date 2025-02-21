local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)  -- Enable LuaSnip
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate completion
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
    ["<C-Space>"] = cmp.mapping.complete(), -- Manually trigger completion
  }),
  sources = cmp.config.sources({
	{ name = "copilot" },
    { name = "nvim_lsp" },  -- LSP completion
    { name = "luasnip" },   -- Snippet completion
    { name = "buffer" },    -- Text from current buffer
    { name = "path" },      -- File path completion

  })
})
