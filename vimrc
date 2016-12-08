" A minimal vimrc

set nocompatible

" AUTO-INSTALL VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" VIM-PLUG
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/vim-easy-align'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'gioele/vim-autoswap'
  Plug 'tpope/vim-repeat'
  Plug 'wincent/Command-T'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'nelstrom/vim-qargs'
  Plug 'tpope/vim-dispatch'
  Plug 'JarrodCTaylor/vim-ember-cli-test-runner'
  Plug 'SirVer/ultisnips'
  Plug 'alexlafroscia/vim-ember-cli'
call plug#end()

" use comma as leader key
let mapleader=","

" show line numbers
set nu

" Make it easy to use mouse for selecting, copy/paste and scroll...
set mouse=r

set autowriteall
au FocusLost * :wa
au FocusLost * silent! wa

" Make json files highlighted too
autocmd BufNewFile,BufRead *.json set ft=javascript

" Always show statusline
:set laststatus=2

" VIMCASTS...
set ts=2 sts=2 sw=2 expandtab

".vimrc
nnoremap <leader>v :source $MYVIMRC<CR>

" TAB MADNESS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" command-t
let g:CommandTAlwaysShowDotFiles=1
let g:CommandTMatchWindowAtTop=1
let g:CommandTCancelMap=['<C-x>', '<C-c>']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep,.gems/**
set wildignore+=*.ico,*.ICO,backup/**,*.dump,*.tmp,*.min.js
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=coverage/**,tmp/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**
set wildignore+=node_modules/**/node_modules/**
set wildignore+=.DS_Store

" Use silver-searcher 
let g:ackprg = 'ag --nogroup --nocolor --column'

" Highlight all text matching the current search
set hlsearch

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

""
"" Backup and swap files
""
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

" allow undo history to persist after closing buffer
if has('persistent_undo')
  set undodir=~/.vim/_undo
  set undofile
end


let g:mustache_abbreviations = 1

"Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

