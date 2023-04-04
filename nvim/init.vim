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
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-tree/nvim-web-devicons'
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
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=23
let g:NERDTreeHighlightCursorline=0
let g:NERDTreeShowHidden=1


" Basic settings
set termguicolors
set visualbell
set t_vb=v

set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

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
"map <silent> <C-f> :NERDTreeFocus <CR>
"map <silent> <C-c> :NERDTreeClose <CR>
"map <silent> <C-g> :CocCommand clangd.switchSourceHeader<CR>

" Use <tab> for autocompletion
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>" 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"Go-To-Definition
nmap gd <Plug>(coc-definition)

" Telescope
autocmd VimEnter * lua require('telescope').load_extension('file_browser')

nmap ff <cmd> :Telescope find_files theme=dropdown previewer=false layout_config={height=200,width=200} <CR>
nmap fb <cmd> :Telescope file_browser theme=dropdown previewer=false layout_config={height=200,width=200} <CR>

"nmap fb <cmd>Telescope file_browser<CR>
"nmap ff <cmd>Telescope find_files<CR>
"nmap fg <cmd>Telescope live_grep<CR>
"nmap bb <cmd>Telescope buffers<CR>
"nmap fh <cmd>Telescope help_tags<CR>

" Disabling all arrow keys
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Indentation
autocmd BufWritePre * :ret!

nnoremap <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

