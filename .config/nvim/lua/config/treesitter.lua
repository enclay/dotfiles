local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = {"c", "lua", "python", "rust"},
	highlight = { enable = true, additional_vim_regex_highlighting = false },
})
