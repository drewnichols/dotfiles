" A minimal vimrc

set nocompatible

" VIM-PLUG
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/vim-easy-align'
  Plug 'bling/vim-airline'
call plug#end()

" use comma as leader key
let mapleader=","

" Make it easy to use mouse for selecting, copy/paste and scroll...
set mouse=a

" Save buffers
set autowriteall
au FocusLost * :wa
au FocusLost * silent! wa

" Shortcuts
nmap <leader>bq :bp <BAR> bd #<cr>

:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

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
"if has("autocmd")
"  autocmd bufwritepost vimrc echo "NICE!"
"  autocmd bufwritepost vimrc source $MYVIMRC
"endif
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
nnoremap <leader>v :tabedit $MYVIMRC<CR>



" TAB MADNESS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
