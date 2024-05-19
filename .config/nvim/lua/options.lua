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

-- Themes
vim.g.nord_cursor_line_number_background = 1
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.material_style = "darker"

vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme material")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight VertSplit cterm=NONE")
