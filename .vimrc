execute pathogen#infect()
call pathogen#helptags()

set encoding=utf-8

set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set relativenumber
set number
set autoindent

" Set horizontal line under cursor
set cursorline

" Uppercase word under cursor
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwU

" Disable Arrow keys in Escape mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

let mapleader = ","
let maplocalleader = ","

" Open and close NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" Tab navigation
nnoremap tn  :tabnew<cr>
nnoremap td  :tabclose<cr>
nnoremap th  :tabfirst<cr>
nnoremap tk  :tabnext<cr>
nnoremap tj  :tabprev<cr>
nnoremap tl  :tablast<cr>

" Python-specific mappings
augroup filetype_python   
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>d yyP^Cimport pdb; pdb.set_trace()<esc>j
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

" C++-specific mappings
augroup filetype_cpp
    autocmd!
    autocmd FileType cpp nnoremap <buffer> <localleader>d yyP^Cprintf("HERE!\n");<esc>j
    autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
augroup END

" Turn highlighted search on by default
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" Highlight and search all instances of a word under cursor, when idle.
let g:highlighting = 0
function! Highlighting()
  let @/ = '\<'.expand('<cword>').'\>'
  return ":silent set hlsearch\<cr>"
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

nnoremap <silent>  <leader>r :call NumberToggle()<cr>

" Basic brace pair completion for parenthesis, brackets and braces. If you quickly press Enter after the open brace (to begin a code block), the closing brace will be inserted on the line below the cursor. If you quickly press the open brace key again after the open brace, nothing extra will be inserted—you will just get a single open brace. Finally, if you quickly type an open and close brace, Vim will not do anything special.
"Parentheses
inoremap (      ()<Left>
inoremap (<cr>  (<cr>)<esc>O
inoremap ((     (
inoremap ()     ()

"Brackets
inoremap [      []<Left>
inoremap [<cr>  [<cr>]<esc>O
inoremap [[     [
inoremap []     []

"Braces
inoremap {      {}<Left>
inoremap {<cr>  {<cr>}<esc>O
inoremap {{     {
inoremap {}     {}

" Double quotation marks
inoremap "      ""<Left>

" Single quotation marks
inoremap '      ''<Left>

" Disable doubling quotation marks in Vimscript files
augroup filetype_cpp
    autocmd!
    autocmd FileType vim inoremap ' '
    autocmd FileType vim inoremap " "
augroup END

" Move entire lines up and down using the arrow keys in normal, insert and visual modes
nnoremap <up> :m .-2<cr>== 
nnoremap <down> :m .+1<cr>== 
inoremap <up> <esc>:m .-2<cr>==gi
inoremap <down> <esc>:m .+1<cr>==gi
vnoremap <up> :m '<-2<cr>gv=gv
vnoremap <down> :m '>+1<cr>gv=gv

" Easily modify .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround text with double or single quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>el
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>el

" Organize swapfiles into one place
" https://vi.stackexchange.com/questions/177/what-is-the-purpose-of-swap-files
set directory^=$HOME/.vim/tmp//

