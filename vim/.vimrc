call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug '~/.fzf'
Plug 'wakatime/vim-wakatime'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

"=====================================================
"" General settings
"=====================================================

set updatetime=100
set number 			" Show line numbers
set ttyfast 			" terminal acceleration
set shiftwidth=4        	" shift lines by 4 spaces
set tabstop=4
set smarttab            	" set tabs for a shifttabs logic
set expandtab
set softtabstop=0
set nohlsearch

set noswapfile

" set shortcuts for split panes
nmap <silent> <c-k> :wincmd l<CR>
nmap <silent> <c-j> :wincmd h<CR>

" Goto next tab
nnoremap <C-L> gt

" Goto previous tab
nnoremap <C-H> gT

" Create new tab
nnoremap <C-N> :tabnew<CR>

" Close tab
nnoremap <C-X> :tabclose<CR>

set clipboard=unnamed                       " use system clipboard
nnoremap <C-A> ggVG

set autoindent " indent when moving to the next line while writing code

nnoremap <C-P> :FZF<CR>
set guifont=Fira\ Mono\ for\ Powerline:h15
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
colorscheme catppuccin_mocha
syntax on
