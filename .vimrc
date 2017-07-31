set number
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

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
let mapleader = ","
nmap <leader>n :NERDTreeToggle<cr>

" Tab navigation
nnoremap tn  :tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
