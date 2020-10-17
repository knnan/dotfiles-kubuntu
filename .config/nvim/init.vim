call plug#begin()

" formatting and cursor plugins
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'

" fuzzy finder plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" plugin to set search directory to the closes root of the closest git project
Plug 'https://github.com/airblade/vim-rooter'

" improved incremental search plugin
Plug 'haya14busa/incsearch.vim'

" autocompletion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" colorscheme plugins
Plug 'sainnhe/forest-night'
Plug 'ayu-theme/ayu-vim' 
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'

Plug 'morhetz/gruvbox'

" airline themes plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()



" look and feel configuration
set termguicolors     " enable true colors support
set background=dark





" config for ayu theme
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme

" config for palenight theme

" config for forest_night theme (configuration options should be placed before `colorscheme forest-night`)
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1

colorscheme base16-material-palenight
colorscheme forest-night
colorscheme one
colorscheme palenight
colorscheme gruvbox
colorscheme ayu
colorscheme OceanicNext

let g:airline_theme = 'forest_night'
let g:airline_theme = "ayu"
let g:airline_theme = "OceanicNext"
let g:airline_theme = "one"
let g:airline_theme = "palenight"


syntax on
set guicursor=
set cursorline
set number


" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let mapleader=";"

" vim-rooter configs
let g:rooter_change_directory_for_non_project_files = 'home'




" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" NerdTree configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nmap <C-f> :NERDTreeToggle<CR> 
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <c-k> <C-w>k
" map <c-l> <C-w>l

" Editor keybindingss
nnoremap <C-S-Up> :m-2<CR>i
nnoremap <C-S-Down> :m+<CR>i
inoremap <C-S-Up> <Esc>:m-2<CR>i
inoremap <C-S-Down> <Esc>:m+<CR>i


nnoremap <C-S-k> ddi
inoremap <C-S-k> <Esc>ddi
nnoremap <C-S-left> 0i
inoremap <C-S-left> <Esc>0i

nnoremap <C-S-right> $i
inoremap <C-S-right> <Esc>$i

nnoremap <C-S-d> yypi
inoremap <C-S-d> <Esc>yypi


" Alternate way to save and quit
nnoremap <C-Q> :wq!<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>



nnoremap <C-p> :Files<CR> 
nnoremap <C-o> :Buffers<CR> 
nnoremap <C-f> :Rg<CR> 
inoremap jj <ESC>
" nnoremap <leader><leader> :Buffers<CR>

" coc configs
source $HOME/.config/nvim/module_configs/coc.vim
nnoremap <C-s> :w<CR>
