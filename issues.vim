" colours are messed up for most keymappings
nnoremap <leader>\ ddkP
vnoremap // y/<C-R>"<CR>

" Especially the ones containing quotes...
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>v" `>a"<esc>`<i"<esc>`>l
vnoremap <leader>" v`>a"<esc>`<i"<esc>v`>l


" first comma between string arguments is red, comma before 100 is white
call matchadd('ColorColumn', '\%81v.\+', 100)

" As opposed to vim's syntax highlighting, colorcolumn is only highlighted in
" blue in let &colorcolumn statement...
set colorcolumn=81
let &colorcolumn="80,".join(range(120,999),",")

" plug#begin is highlighted in yellow, plug#end is pink?
call plug#begin('~/.vim/plugged')

" everything after Plug is red, apart from the closing }, which is white
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

call plug#end()
