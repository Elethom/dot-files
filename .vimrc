" View
set updatetime=50
"set listchars=eol:¶,trail:·
"set list

" Edit
set backspace=indent,eol,start " allow BS to delete autoindent, line breaks, start of insert
set whichwrap+=<,>,h,l " allow arrow keys and h,l to move to previous/next line
"set clipboard=unnamed " use system clipboard
"nnoremap yy :.w !pbcopy<CR><CR>
"vnoremap y :w !pbcopy<CR><CR>
"nnoremap p :r !pbpaste<CR>

" Indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " expand tab to spaces
set autoindent
set smartindent
inoremap <CR> <CR>x<BS> " change a blank line upon creation so spaces won't be removed
nmap o ox<BS>
nmap O Ox<BS>

" Search
set hlsearch " highlight results
set incsearch " realtime highlight results
set ignorecase " ignore case
set smartcase " do not ignore case when having upper case chars

" Line number
set number " show line number

" Syntax highlight
syntax on
"match Function /\v(( |\.|^)\zs\w+\ze\(|\.\zs\w+\ze)/
"syn match SpecialKey /^ \+/ cchar=·

" Scroll offset
set scrolloff=6

" Show current mode
set showmode

" Show cursor
set cursorline
"set cursorcolumn

" Status line
"set statusline=%<%F%m%r%h%w\ \ \ \ [col:%v][%l/%L\ (%p%%)]%=[ff:\ %{&ff}][fenc:\ %{&fenc!=''?&fenc:&enc}][enc:\ %{&enc}][ft:\ %{&ft}]
set statusline=%{fnamemodify(getcwd(),':p:~:h:t')}/%f%m%r%h%w%{substitute(FugitiveStatusline(),'\\[Git(\\(.*\\))\\]','\ @\ \\1','')}%=%l,\ %v\ of\ %L\ (%p%%)\ \|\ %{&ff}\ \|\ %{&ft}
" ~/.vimrc[+]    [col: 1][ 1/100 (1%) ]          [ff: unix][fenc: utf-8][enc: utf-8][ft: vim]
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
let mapleader=";"
imap jk <Esc>
imap kj <Esc>
nnoremap 0 ^
nnoremap ^ 0
" show syntax name under the cursor
map <leader>xxx :echo "hi<"
  \. synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
  \. synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
  \. synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" FileType
autocmd FileType javascript,json,typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'sheerun/vim-polyglot'
  Plug 'Elethom/midnight.vim'
call plug#end()
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
colorscheme midnight

" coc
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<Tab>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
autocmd CursorHold * silent call CocActionAsync('highlight') " set updatetime=50
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Fold
" set foldmethod=syntax
" set foldlevelstart=1

" let javaScript_fold=1         " JavaScript
" let perl_fold=1               " Perl
" let php_folding=1             " PHP
" let r_syntax_folding=1        " R
" let ruby_fold=1               " Ruby
" let sh_fold_enabled=1         " sh
" let vimsyn_folding='af'       " Vim script
" let xml_syntax_folding=1      " XML

if has('nvim-0.3.2') || has("patch-8.1.0360")
    set diffopt=filler,internal,algorithm:histogram,indent-heuristic
endif
