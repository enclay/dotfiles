-- Forget about arrows
local opts = { noremap = true, silent = true }

vim.keymap.set({"n", "v"}, "<Up>", ":echo 'Use k instead!'<CR>", opts)
vim.keymap.set({"n", "v"}, "<Down>", ":echo 'Use j instead!'<CR>", opts)
vim.keymap.set({"n", "v"}, "<Left>", ":echo 'Use h instead!'<CR>", opts)
vim.keymap.set({"n", "v"}, "<Right>", ":echo 'Use l instead!'<CR>", opts)

vim.keymap.set("i", "<Up>", "<nop>", opts)
vim.keymap.set("i", "<Down>", "<nop>", opts)
vim.keymap.set("i", "<Left>", "<nop>", opts)
vim.keymap.set("i", "<Right>", "<nop>", opts)
