require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "lua", "python", "rust"},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
