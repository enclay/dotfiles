-- Disable arrow keys
vim.keymap.set('n', '<Up>', '<nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<nop>', { noremap = true, silent = true })

-- Retab before saving
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  command = ':ret!'
})
