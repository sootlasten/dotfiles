set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set relativenumber
set number

" Set horizontal line under cursor
set cursorline

let mapleader = ","

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

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
nnoremap <leader>t yyP^Cimport pdb; pdb.set_trace()<Esc>

" Insert a print statement in C
nnoremap <leader>d yyP^Cprintf("HERE!\n");<Esc>

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

" Toggle relative numbering on and off
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
        set number
    endif
endfunction

nnoremap <silent>  <leader>r :call NumberToggle()<CR>

" Basic brace pair completion for parenthesis, brackets and braces. If you quickly press Enter after the open brace (to begin a code block), the closing brace will be inserted on the line below the cursor. If you quickly press the open brace key again after the open brace, nothing extra will be inserted—you will just get a single open brace. Finally, if you quickly type an open and close brace, Vim will not do anything special.
"Parentheses
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()

"Brackets
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

"Braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Move entire lines up and down using the arrow keys in normal, insert and visual modes
nnoremap <up> :m .-2<CR>== 
nnoremap <down> :m .+1<CR>== 
inoremap <up> <Esc>:m .-2<CR>==gi
inoremap <down> <Esc>:m .+1<CR>==gi
vnoremap <up> :m '<-2<CR>gv=gv
vnoremap <down> :m '>+1<CR>gv=gv
