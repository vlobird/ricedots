let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'pdflatex'

" COMPILING
autocmd FileType tex map <F5> :w<Enter> :!pdflatex <C-r>%<Enter><Enter> :!pdflatex <C-r>%<Enter><Enter>
autocmd FileType tex inoremap <F5> <Esc>:w<Enter> :!pdflatex <C-r>%<Enter><Enter> :!pdflatex <C-r>%<Enter><Enter>
autocmd FileType tex map <F4> :LLPStartPreview<Enter>

" METADATA
autocmd FileType tex inoremap ;ut \usetheme{}<Esc>i
autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap ;a \author{}<Esc>i
autocmd FileType tex inoremap ;t \title{}<Esc>i
" TEXT
autocmd FileType tex inoremap ;b \textbf{}<Space><++><Esc>F}i
autocmd FileType tex map ;b i\textbf{<Esc>ea}<Esc>
autocmd FileType tex inoremap ;i \textit{}<Space><++><Esc>F}i
autocmd FileType tex map ;i i\textit{<Esc>ea}<Esc>
autocmd FileType tex map ;u i\underline{<Esc>ea}<Esc>
autocmd FileType tex inoremap ;c \begin{center}<Enter><Enter>\end{center}<Enter><Enter><++><Enter><Esc>4ka
autocmd FileType tex inoremap ;fl \begin{flushleft}<Enter><Enter>\end{flushleft}<Enter><Enter><++><Enter><Esc>4ka
autocmd FileType tex inoremap ;fr \begin{flushright}<Enter><Enter>\end{flushright}<Enter><Enter><++><Enter><Esc>4ka
autocmd FileType tex inoremap ;q \begin{quote}<Enter><Enter>\end{quote}<Enter><Enter><++><Enter><Esc>4ka
autocmd FileType tex inoremap ;fs \begin{footnotesize}<Enter><Enter>\end{footnotesize}<Enter><Enter><++><Enter><Esc>4ka

" SPACING
autocmd FileType tex inoremap ;np \newpage<Enter><Enter>
autocmd FileType tex inoremap ;bs \bigskip<Enter><Enter>

" STRUCTURE
autocmd FileType tex inoremap ;mt \maketitle<Enter><Enter>
autocmd FileType tex inoremap ;toc \tableofcontents<Enter><Enter>
autocmd FileType tex inoremap ;f \begin{frame}{}<Enter><Enter><++><Enter><Enter>\end{frame}<Esc>4k$i
autocmd FileType tex inoremap ;s \section{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
autocmd FileType tex inoremap ;su \subsection{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
autocmd FileType tex inoremap ;suu \subsubsection{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
autocmd FileType tex inoremap ;p \paragraph{}<Enter><Enter><++><Enter><Enter><Esc>4k$i
autocmd FileType tex inoremap ;sp \subparagraph{}<Enter><Enter><++><Enter><Enter><Esc>4k$i

" LISTS
autocmd FileType tex inoremap ;I \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3ka\item<space>
autocmd FileType tex inoremap ;N \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3ka\item<space>
autocmd FileType tex inoremap ;; \item<space>

" SPECIAL
autocmd FileType tex inoremap ;ig \includegraphics[scale=]{<++>}<Enter><Enter><++><Enter><Enter><Esc>4kf=a
autocmd FileType tex inoremap ;P \pause<Enter><Enter>
