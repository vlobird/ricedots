let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'

" COMPILING
map <F5> :w<Enter> :!pdflatex <C-r>%<Enter><Enter> :!pdflatex <C-r>%<Enter><Enter>
inoremap <F5> <Esc>:w<Enter> :!pdflatex <C-r>%<Enter><Enter> :!pdflatex <C-r>%<Enter><Enter>

" METADATA
inoremap ;ut \usetheme{}<Esc>i
inoremap ;up \usepackage{}<Esc>i
inoremap ;a \author{}<Esc>i
inoremap ;t \title{}<Esc>i
" TEXT
inoremap ;b \textbf{}<Space><++><Esc>F}i
map ;b i\textbf{<Esc>ea}<Esc>
inoremap ;i \textit{}<Space><++><Esc>F}i
map ;i i\textit{<Esc>ea}<Esc>
inoremap ;u \underline{}<Space><++><Esc>F}i
map ;u i\underline{<Esc>ea}<Esc>
command CENTER execute "read ~/.vim/ide/snippets/tex_center"
command QUOTE execute "read ~/.vim/ide/snippets/tex_quote"
command FLUSHRIGHT execute "read ~/.vim/ide/snippets/tex_flushright"
command FLUSHLEFT execute "read ~/.vim/ide/snippets/tex_flushleft"
command FOOTNOTESIZE execute "read ~/.vim/ide/snippets/tex_footnotesize"

" SPACING
inoremap ;np \newpage<Enter><Enter>
inoremap ;bs \bigskip<Enter><Enter>

" STRUCTURE
inoremap ;mt \maketitle<Enter><Enter>
inoremap ;toc \tableofcontents<Enter><Enter>
inoremap ;s \section{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
inoremap ;su \subsection{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
inoremap ;suu \subsubsection{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
inoremap ;p \paragraph{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
inoremap ;sp \subparagraph{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
command FRAME execute "read ~/.vim/ide/snippets/tex_frame"

" LISTS
command ITEMIZE execute "read ~/.vim/ide/snippets/tex_itemize"
command ENUMERATE execute "read ~/.vim/ide/snippets/tex_enumerate"
inoremap ;; \item<space>

" SPECIAL
inoremap ;ig \includegraphics[scale=]{<++>}<Enter><Enter><++><Enter><Enter><Esc>4kf=a
inoremap ;P \pause<Enter><Enter>

" SNIPPETS
"inoremap ;I \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3ka\item<space>
"inoremap ;N \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3ka\item<space>
"inoremap ;c \begin{center}<Enter><Enter>\end{center}<Enter><Enter><++><Enter><Esc>4ka
"inoremap ;fl \begin{flushleft}<Enter><Enter>\end{flushleft}<Enter><Enter><++><Enter><Esc>4ka
"inoremap ;fr \begin{flushright}<Enter><Enter>\end{flushright}<Enter><Enter><++><Enter><Esc>4ka
"inoremap ;q \begin{quote}<Enter><Enter>\end{quote}<Enter><Enter><++><Enter><Esc>4ka
"inoremap ;fs \begin{footnotesize}<Enter><Enter>\end{footnotesize}<Enter><Enter><++><Enter><Esc>4ka
"map <F4> :LLPStartPreview<Enter>
"inoremap ;f \begin{frame}{}<Enter><Enter><++><Enter><Enter>\end{frame}<Esc>4k$i
