-- Disable arrow keys in normal mode
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Up>", "<nop>", opts)
vim.keymap.set("n", "<Down>", "<nop>", opts)
vim.keymap.set("n", "<Left>", "<nop>", opts)
vim.keymap.set("n", "<Right>", "<nop>", opts)
