" COMPILING
map <F4> :w<Enter>:!pandoc "<C-r>%" -o output.pdf<Enter><Enter>
inoremap <F4> <Esc>:w<Enter> :!pandoc "<C-r>%" -o output.pdf<Enter><Enter>
map <F5> :w<Enter>:!pandoc "<C-r>%" -o output.pdf --toc<Enter><Enter>
inoremap <F5> <Esc>:w<Enter> :!pandoc "<C-r>%" -o output.pdf --toc<Enter><Enter>

inoremap ;1 #<Space>
inoremap ;2 ##<Space>
inoremap ;3 ###<Space>
inoremap ;; -<Space>
inoremap ;: <Tab>-<Space>
inoremap ;b ****<Space><++><Esc>F*hi
inoremap ;i **<Space><++><Esc>F*i
