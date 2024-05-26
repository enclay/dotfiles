require ('lazyload')
require('options')
require('keymaps')

require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "javascript", "typescript"}, 
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
