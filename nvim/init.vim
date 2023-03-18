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

call plug#end()

" Themes settings
let g:nord_cursor_line_number_background = 1
let g:gruvbox_contrast_dark = 'soft'

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
"colorscheme nord
"colorscheme gruvbox

syntax on
filetype plugin indent on
hi Normal guibg=NONE ctermbg=NONE
"set bg=light


" Remove neovim native copypaste integration
"set mouse=

" NerdTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeDirArrowExpandable = '▸'
let NERDTreeDirArrowCollapsible = '▾'
let NERDTreeWinSize=23
let NERDTreeHighlightCursorline=0
let NERDTreeShowHidden=1

highlight VertSplit cterm=NONE

map <silent> <C-f> :NERDTreeToggle <CR>
map <silent> <C-g> :CocCommand clangd.switchSourceHeader<CR>

" Start NERDTree startup
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ "\<Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


let g:coc_global_extensions = [ 'coc-pairs', 'coc-cmake' ]

" Go-To-Definition
nmap gd <Plug>(coc-definition)

" Telescope
nmap ff <cmd>Telescope find_files<CR>
nmap fg <cmd>Telescope live_grep<CR>
nmap fb <cmd>Telescope buffers<CR>
nmap fh <cmd>Telescope help_tags<CR>
