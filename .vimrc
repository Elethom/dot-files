" No VI compatible
set nocompatible

" Edit
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
inoremap <CR> <CR>x<BS>
nmap o ox<BS>
nmap O Ox<BS>

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Line number
set number

" Syntax highlight
syntax on

" Scroll offset
set scrolloff=6

" Show current mode
set showmode

" Show cursor
set cursorline
"set cursorcolumn

" Status line
set statusline=%<%F%m%r%h%w\ \ \ \ \ \ [ff:\ %{&ff}][fenc:\ %{&fenc!=''?&fenc:&enc}][enc:\ %{&enc}][ft:\ %{&ft}]%=[pos:\ %l,%v]\ \ \ \ \ \ [len:\ %l/%L(%p%%)]
set laststatus=2

" Backup
set backup
set undofile
set undodir=~/.vim/undo/
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" File control
set autoread

" Encodings
set encoding=utf8
set fileformats=unix,dos
set fileencodings=ucs-bom,utf-8,GBK,big5,gb2312,cp936,gb18030

" Maps
nmap 0 ^
