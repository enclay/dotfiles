local telescope = require("telescope")
local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

local fb_config = {
	path = vim.fn.expand("%:p:h"),
    previewer = false,
	hijack_netrw = true,
    sorting_strategy = "ascending",
    layout_config = {
		prompt_position = "top",
		height = 200,
		width = 200
	}
}

local ff_config = {
	initial_mode = "insert",
	layout_config = {
		height = 200,
        width = 200
    }
}

local lg_config = {
	initial_mode = 'insert',
	theme = 'ivy'
}

telescope.setup {
  defaults = themes.get_dropdown {},
  extensions = { file_browser = fb_config },
  pickers = { find_files = ff_config, live_grep = lg_config }
}
telescope.load_extension('file_browser')

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      telescope.extensions.file_browser.file_browser()
    end
  end
})

vim.keymap.set("n", "fb", telescope.extensions.file_browser.file_browser)
vim.keymap.set("n", "ff", builtin.find_files)
vim.keymap.set("n", "fg", builtin.live_grep)
