-- Options
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false
vim.opt.fillchars = {
	fold = " ",
	vert = "│",
	eob = " ",
	msgsep = "‾"
}
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.clipboard:append("unnamedplus")

-- Appearance
vim.cmd("colorscheme lackluster-hack")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi SignColumn guibg=NONE")
vim.cmd("hi FoldColumn guibg=NONE")
