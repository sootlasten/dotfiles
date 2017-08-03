set number
set relativenumber
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Set horizontal line under cursor
set cursorline

let mapleader = ","

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Open and close NERDTree
nmap <leader>n :NERDTreeToggle<cr>

" Tab navigation
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>

" Python's debugger
nnoremap <leader>t yyP^C import pdb; pdb.set_trace()<Esc>

" Turn highlighted search on by default
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Highlight and search all instances of a word under cursor, when idle.
let g:highlighting = 0
function! Highlighting()
  let @/ = '\<'.expand('<cword>').'\>'
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <leader>h Highlighting()
