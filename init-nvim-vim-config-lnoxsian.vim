"-- General settings for neovim
set nocompatible              
filetype off                  
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1
set noshowmode

"-- Tabbing settings for neovim
set scrolloff=3
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"-- NerdTree settings for neovim
map <C-f> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=25

"-- Mouse settings for neovim
set mouse=nicr
set mouse=a

"-- Splitting settings for neovim
set splitbelow splitright
"-- Splits movement for neovim 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"-- Splits resizing for neovim
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
"-- Custom mapping for plugins settings for neovim
noremap <silent> <A-c> :ColorizerToggle<CR>
noremap <silent> <A-T> :colorscheme ayu-dark<CR>
noremap <silent> <A-A> :colorscheme catppuccin<CR>
noremap <silent> <A-r> :RainbowToggle<CR>
noremap <silent> <A-I> :IndentBlanklineToggle<CR>
"-- Custom mapping for splitting motions
map <silent> te :tabedit<CR>
map <silent> ss :split<CR>
map <silent> sp :vsplit<CR>
"-- This is for auto closing of quotes in neovim
"*pls uncomment the ones that are required ok :)
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O


"-- These are the settings for neovim gui
colorscheme ayu-mirage
set guifont=InconsolataGo\ NF:h12
let g:neovide_transparency=0.95

"-- This is to load and further settings for lua plugins
lua require("lua-app-conf")
