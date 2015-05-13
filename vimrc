" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
" AFTER EDITING, RELOAD WITH:
" :so ~/.vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" use comma as leader key
let mapleader=","

" Make it easy to use mouse for selecting, copy/paste and scroll...
set mouse=a

" Save buffers
set autowriteall
au FocusLost * :wa
au FocusLost * silent! wa

" Shortcuts
map <leader>k :E<cr> 
map <leader>, :E<cr> 
map <leader>m :bn<cr> 
map <leader>. :bp<cr> 
map <leader>vv :so ~/.vimrc<cr> 
nmap <leader>bq :bp <BAR> bd #<cr>
map <F1> :ls<cr>


" :nnoremap <C-n> :bnext<CR>
" :nnoremap <C-p> :bprevious<CR>

:nnoremap <C-n> :bnext<CR>:redraw<CR>:ls<CR> 
:nnoremap <C-p> :bprevious<CR>:redraw<CR>:ls<CR>


" Experimental...
" http://getpocket.com/a/read/646417642
let g:netrw_liststyle=3

" Make json files highlighted too
autocmd BufNewFile,BufRead *.json set ft=javascript

" Always show statusline
:set laststatus=2

" VIMCASTS...
set ts=2 sts=2 sw=2 expandtab

".vimrc
"..Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
echo '.vimrc updated!'
nnoremap <leader>v :tabedit $MYVIMRC<CR>

