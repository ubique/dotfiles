set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'a.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kana/vim-operator-user'
Plugin 'rhysd/vim-clang-format'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'uarun/vim-protobuf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
set laststatus=2
color morning
syntax on
set nu
set modeline
set tabstop=4
set shiftwidth=4
set expandtab

highlight NearLength ctermbg=magenta ctermfg=white guibg=#592959
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" Match characters after position 78; set highlight to be magenta
" Second match characters after position 80; set highlight to be red
match NearLength /\%93v.\+/
2match OverLength /\%95v.\+/
highlight ExtraWhitespace ctermbg=brown guibg=red
match ExtraWhitespace /\s\+$/

set noautoindent
set nosmartindent
set nocindent
filetype indent off

map <F4> :set invnumber<CR>
map <F6> :setlocal spell! spelllang=en_us<cr>
nmap K :Man <cword><CR>

" a.vim
let g:alternateExtensions_cpp = "inc,h,H,HPP,hpp,hh"
let g:alternateExtensions_cxx = "inc,h,H,HPP,hpp,hh"
let g:alternateExtensions_hh = "cpp,cxx,cc"
let g:alternateExtensions_h = "rl"
let g:alternateExtensions_rl = "h"
map <F7> :A<cr>

" tagbar
nnoremap <silent> <F3> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_width = 50
let g:tagbar_sort  = 1

" vim-clang-format
let g:clang_format#command = "/usr/bin/clang-format-3.6"
map <C-K> <Plug>(operator-clang-format)

" vim-cpp-enhanced-hightlith
let g:cpp_class_scope_highlight = 1
