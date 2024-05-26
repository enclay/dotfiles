return {
  {
	  'preservim/nerdtree'
  },
  {
	  'jiangmiao/auto-pairs',
	  enabled = false
  },
  {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  },
  {
	  'neoclide/coc.nvim',
	  branch = 'release',
	  keys = {
		  { '<C-g>', ':CocCommand clangd.switchSourceHeader<CR>', mode = 'n', noremap = true, silent = true },
		  { '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"', mode = 'i', expr = true, silent = true },
		  { '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', mode = 'i', expr = true, silent = true },
		  { 'gd', '<Plug>(coc-definition)', mode = 'n', silent = true }
	  }
  },
  {
	  'nvim-telescope/telescope.nvim',
	  dependencies = {
		  { 'nvim-lua/plenary.nvim' },
		  { 'nvim-telescope/telescope-file-browser.nvim' }
	  },

	  init = function(_)
		  require('telescope').load_extension('file_browser')

		  require('telescope').setup{
			  defaults = {
				  previewer = false,
				  --initial_mode = 'normal'
			  },
			  pickers = {
				  find_files = {
					  initial_mode = 'insert'
				  },
				  live_grep = {
					  initial_mode = 'insert',
					  theme = 'ivy'
				  }
			  }
		  }

		  require('telescope').setup {
			  defaults = require('telescope.themes').get_dropdown{}
		  }
	  end,

	  keys = {
		  {
			"ff",
			function()
				local builtin = require("telescope.builtin")
				builtin.find_files({
					layout_config = { height = 200, width = 200 }
				})
			end
		  },
		  {
			  "fb",
			  function()
				  local telescope = require("telescope")
				  telescope.extensions.file_browser.file_browser({
						path = "%:p:h",
						previewer = false,
						layout_config = { height = 200, width = 200 },
					})
			  end
		  },
		  {
			  "fg",
			  function()
				  local builtin = require("telescope.builtin")
				  builtin.live_grep({})
			  end

		  }
	  }
  },
}
