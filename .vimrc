" Pathogen
execute pathogen#infect()
filetype plugin indent on
Helptags

" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

let g:ycm_server_python_interpreter = "/home/user/jbenik/bin/python/bin/python"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle 'JonAWhite/vim-cpplint'
Bundle 'tpope/vim-surround'
Bundle 'rhysd/vim-clang-format'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END of Vundle

" YouCompleteMe / YCM
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=0
let g:ycm_autoclose_preview_window_after_completion=1
"Plug 'Valloric/YouCompleteMe', {
"      \ 'do' : 'fds_build.sh'
"      \ }
" Clang-Format
"map <C-I> :pyf /home/user/jwhite/src/llvm/tools/clang/tools/clang-format/clang-format.py<CR>
"imap <C-I> <ESC>:pyf /home/user/jwhite/src/llvm/tools/clang/tools/clang-format/clang-format.py<CR>i

:color desert

autocmd BufNewFile,BufRead *.t set syntax=perl
" tmux show filename opened
"if exists('$TMUX')
    "let tmuxtitle = system("tmux display-message -p '#W'")
    "autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window '" . expand("%:t") . "'")
    "autocmd VimLeave * call system("tmux rename-window " . shellescape(tmuxtitle))
"endif

source /home/fonix/prd_progs/tools/conf/vim/fds.vimrc
set number
set ai
set tabstop=4
set expandtab
set shiftwidth=2


source /home/user/eledesma/.vim/lineup.vim
