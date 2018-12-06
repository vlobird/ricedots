" GENERAL
let mapleader =" "
colorscheme peachpuff
set wildmenu
set number
set relativenumber
set nocompatible
filetype plugin on
syntax on
filetype plugin indent on

" PATHOGEN
execute pathogen#infect()
call pathogen#helptags()

" TABING
so ~/.vim/tabline.vim
map <leader>t :tabedit<Space>
map <Tab> gt
map <S-Tab> gT
map gf <C-w>gf

" SPLITVIEWS
set splitbelow splitright
map <leader>s :split<Space>
map <leader>v :vsplit<Space>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" IDE KEYMAPS
autocmd FileType markdown so ~/.vim/ide/markdown.vim
autocmd FileType tex source ~/.vim/ide/tex.vim
autocmd FileType html so ~/.vim/ide/html.vim
autocmd FileType css so ~/.vim/ide/css.vim
autocmd FileType js so ~/.vim/ide/js.vim
autocmd FileType sh so ~/.vim/ide/shell.vim
autocmd FileType c so ~/.vim/ide/c.vim
autocmd FileType cpp so ~/.vim/ide/cpp.vim

" GLOBAL KEYMAPS
map <F2> :NERDTreeToggle<Enter>
map <leader>h :set hls<Enter>
map <leader>nh :set nohls<Enter>
map <C-y> "+y
map <C-p> "+p

map <space><tab> <Esc>/<++><Enter>ca<
inoremap <space><tab> <Esc>/<++><Enter>ca<
vnoremap <space><tab> <Esc>/<++><Enter>ca<
