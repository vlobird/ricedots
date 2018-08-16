" GENERAL
colorscheme peachpuff
set wildmenu
set number
set relativenumber
set nocompatible
filetype plugin on
syntax on

" PATHOGEN
execute pathogen#infect()
call pathogen#helptags()

" TABING
so ~/.vim/tabline.vim
map <Tab> gt
map <S-Tab> gT
map gf <C-w>gf

" IDE KEYMAPS
autocmd FileType markdown so ~/.vim/ide/markdown.vim
autocmd FileType tex so ~/.vim/ide/tex.vim
autocmd FileType html so ~/.vim/ide/html.vim
autocmd FileType css so ~/.vim/ide/css.vim
autocmd FileType js so ~/.vim/ide/js.vim
autocmd FileType shell so ~/.vim/ide/shell.vim

" GLOBAL KEYMAPS
map <F2> :NERDTreeToggle<Enter>
map M :set hls<Enter>
map MM :set nohls<Enter>
map <C-y> "+y
map <C-p> "+p

map <space><tab> <Esc>/<++><Enter>ca<
inoremap <space><tab> <Esc>/<++><Enter>ca<
vnoremap <space><tab> <Esc>/<++><Enter>ca<

