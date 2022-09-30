" vim-plug 
call plug#begin()

Plug 'tomasr/molokai'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
set cursorline
set textwidth=80
set scrolloff=5
set laststatus=2
set ruler
filetype indent on
syntax enable
set background=dark
colorscheme molokai
set autoindent
set tabstop=4
set softtabstop=2
set showmatch
set hlsearch
set ignorecase
set smartcase
set undofile

set autochdir
set noerrorbells
set visualbell
set history=200
set autoread

set wildmenu
set wildmode=longest:list,full

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" gutentags 
let g:gutentags_porject_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

if !isdirectory(s:vim_tags)
		silent! call mkdir(s:vim_tags, 'p')
endif

" nerdtree
autocmd vimenter * NERDTree | wincmd p
map <F3>: NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


