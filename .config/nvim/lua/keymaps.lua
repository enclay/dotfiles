vim.api.nvim_set_keymap('n', '<C-g>', ':CocCommand clangd.switchSourceHeader<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"', { expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', { expr = true, silent = true })

vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })

vim.api.nvim_create_autocmd('VimEnter', {
  pattern = '*',
  callback = function()
	require('telescope').load_extension('file_browser')
  end
})

vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files theme=dropdown previewer=false layout_config={height=200,width=200}<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'fb', ':Telescope file_browser path=%:p:h select_buffer=true theme=dropdown previewer=false layout_config={height=200,width=200}<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Disable arrow keys
vim.api.nvim_set_keymap('n', '<Up>', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<nop>', { noremap = true, silent = true })

-- Indentation settings
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  command = ':ret!'
})

vim.api.nvim_set_keymap('n', '<F2>', ':<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list?<CR>', { noremap = true, silent = true })
