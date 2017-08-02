set number
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

let mapleader = ","

" disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" open and close NERDTree
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

" Turn on highlighted search by default
set hlsearch

" Highlight all instances of a word under cursor, when idle.
" Type ,h to toggle highlighting on/off. 
let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <leader>h Highlighting()
