
set nocompatible
set showcmd
set backspace=indent,eol,start
set autoindent expandtab tabstop=2 shiftwidth=2
set incsearch
set hlsearch
set spell
set showmatch
set autowrite
syntax enable
"set encoding=UTF-8
set autoshelldir
set nospell
" Autocomplete
set wildmode=longest,list,full
set clipboard+=unamedplus
set autochdir
set noswapfile
set background=dark

if &term == "alacritty"        
 let &term = "xterm-256color"
endif

if has('termguicolors')
  set termguicolors
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
"Plug 'wojciechkepka/vim-github-dark'
Plug 'doums/darcula'
Plug 'ryanoasis/vim-devicons'
Plug 'maralla/completor.vim'
Plug 'tc50cal/vim-terminal'
Plug 'vim-scripts/indentpython'
call plug#end()


set number
colorscheme darcula
"colorscheme ghdark
set termguicolors
hi Normal guibg=NONE ctermbg=NONE


nmap <C-d> : NERDTreeToggle<CR>
nmap <C-f> : NERDTreeFocus<CR>
"autocmd VimEnter * NERDTree

"below terminal
" open terminal below all splits
let g:stt_auto_insert = 1
let g:stt_auto_quit = 1
set splitbelow

noremap <C-q> :terminal-close 
noremap <Leader>\q :terminal-close 
noremap <C-b> :let $VIM_DIR=expand('%:p:h')<CR>:botright horizontal terminal<CR>cd $VIM_DIR<CR>
noremap <C-c> :term close<CR>
nmap + : horizontal resize +5<CR>
nmap - : horizontal resize -5<CR>
tnoremap <Esc> <C-\><C-n>



