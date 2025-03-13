local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<CR>"] = cmp.mapping.confirm(),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" }
  })
})
