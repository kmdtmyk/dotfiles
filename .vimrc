scriptencoding utf-8


set nocompatible
filetype plugin indent off

"git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'othree/html5.vim'
NeoBundle 'Lokaltog/vim-powerline'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'vim-coffee-script'
"NeoBundle 'vim-ruby/vim-ruby'

NeoBundleCheck

"let g:neocomplete#enable_at_startup=1


call neobundle#end()



filetype plugin indent on

syntax on

"char encode
set encoding=utf-8


set number

"set nowrap
set whichwrap=b,s,h,l,<,>,[,],"

"search
set ignorecase
set smartcase
set incsearch

set autoindent
set smartindent

"backup
set nobackup
set noswapfile
set noundofile

"display invisible character
set list
set listchars=tab:>\ ,extends:<

"tab
set tabstop=4
set shiftwidth=4

"file
set autoread

set shellslash

set laststatus=2

set wildmenu
set mouse=a


colorscheme monokai



