local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'preservim/nerdtree' },
  { 'neoclide/coc.nvim', branch = 'release' },
  { 'jiangmiao/auto-pairs' },
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-telescope/telescope.nvim' },
  { 'nvim-telescope/telescope-file-browser.nvim' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'marko-cerovac/material.nvim' },
  { 'savq/melange-nvim' },
}, {
	defaults = {
		lazy = false, 
	}
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "javascript", "typescript"}, 
  highlight = {
	enable = true,
	additional_vim_regex_highlighting = false,
  },
}

-- Themes
vim.g.nord_cursor_line_number_background = 1
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.material_style = "darker"

-- ScrollBars
vim.g.scrollview_excluded_filetypes = {'nerdtree'}
vim.g.scrollview_winblend = 70
vim.g.scrollview_column = 1
vim.g.scrollview_on_startup = 1

-- COC
vim.g.coc_global_extensions = {'coc-pairs', 'coc-cmake'}

-- NerdTree
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
vim.g.NERDTreeWinSize=23
vim.g.NERDTreeHighlightCursorline=0
vim.g.NERDTreeShowHidden=1

-- Set options
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.visualbell = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false
vim.opt.encoding = "utf8"
vim.opt.fillchars = {
  fold = " ",
  vert = "│",
  eob = " ",
  msgsep = "‾"
}

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.number = true
vim.opt.splitbelow = true
vim.opt.cursorline = true

vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme material")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight VertSplit cterm=NONE")

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

