call plug#begin('~/.config/nvim/plugins')

Plug 'preservim/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'andweeb/presence.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }

call plug#end()


" Themes
let g:nord_cursor_line_number_background = 1
let g:gruvbox_contrast_dark = 'soft'

" ScrollBars
let g:scrollview_excluded_filetypes = ['nerdtree']
let g:scrollview_winblend = 70
let g:scrollview_column = 1
let g:scrollview_on_startup = 1

" COC
let g:coc_global_extensions = [ 'coc-pairs', 'coc-cmake' ]

" NerdTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeDirArrowExpandable = '▸'
let NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinSize=23
let NERDTreeHighlightCursorline=0
let NERDTreeShowHidden=1

" Basic settings
set termguicolors
set visualbell
set t_vb=v
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf8
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
set autoindent
set smartindent
set copyindent
set preserveindent
set number
set splitbelow
set cursorline

" Colorscheme
colorscheme onedark
filetype plugin indent on
hi Normal guibg=NONE ctermbg=NONE
highlight VertSplit cterm=NONE
"colorscheme nord
"colorscheme gruvbox
"set bg=light

" NerdTree
map <silent> <C-f> :NERDTreeFocus <CR>
map <silent> <C-c> :NERDTreeClose <CR>
map <silent> <C-g> :CocCommand clangd.switchSourceHeader<CR>

" Use <tab> for autocompletion
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>" 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


"Go-To-Definition
nmap gd <Plug>(coc-definition)

" Telescope
nmap ff <cmd>Telescope find_files<CR>
nmap fg <cmd>Telescope live_grep<CR>
nmap fb <cmd>Telescope buffers<CR>
nmap fh <cmd>Telescope help_tags<CR>
