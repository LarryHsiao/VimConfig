let mapleader=";"

filetype on
filetype plugin on

nmap LB 0
nmap LE $

"vnoremap <Leader>y 
"nmap <Leader>p
"nmap <Leader>q :q<CR>
"nmap <Leader>w :w<CR>
"nmap <Leader>WQ :wa<CR>:q<CR>
"nmap <Leader>Q :qa!<CR>
"nnoremap nw <C-W><C-W>
"nnoremap <Leader>lw <C-W>l
"nnoremap <Leader>hw <C-W>h
"nnoremap <Leader>kw <C-W>k
"nnoremap <Leader>jw <C-W>j
"nmap <Leader>M %

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set incsearch
set ignorecase
set nocompatible
set wildmenu

filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
"Plugin 'Chiel92/vim-autoformat'
Plugin 'tomasr/molokai'
"Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
call vundle#end()
filetype plugin indent on

set background=dark
"colorscheme solarized
"colorscheme phd
colorscheme molokai
set laststatus=2
set ruler
set number
set cursorline
"set cursorcolumn
set hlsearch
let g:Powerline_colorscheme='solarized256'
syntax enable
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set nowrap

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"nmap <silent> <Leader>i <Plug>IndentGuidesToggle

set foldmethod=syntax
set nofoldenable

"nmap <silent> <Leader>sw :FSHere<cr>

let tagbar_right=1
nmap <F8> :TagbarToggle<CR>
let tagbar_width=32
let g:tagbar_compat=1

let NERDTreeShowHidden=1
let g:NERDTreeShowIgnoreStatus=1
"let g:NERDTreeDirArrowExpandable=''
"let g:NERDTreeDirArrowCollapsible=''

"let g:Powerline_symbols='fancy'

highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
set tags+=/data/misc/software/misc./vim/stdcpp.tags
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_server_python_interpreter="/usr/bin/python"
