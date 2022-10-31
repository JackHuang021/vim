" vim-plug 
call plug#begin()

Plug 'tomasr/molokai'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Lokaltog/powerline'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'thinktainer/omnicppcomplete'
Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

set nocompatible

" detect file type
filetype on
filetype plugin on


syntax on

set helplang=cn
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
set cursorline
set scrolloff=5
set laststatus=2
set ruler
set number
filetype indent on
syntax enable

set background=dark
colorscheme molokai

set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
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

set list
set listchars=tab:>-,trail:-

set conceallevel=0

set ttimeout
set ttimeoutlen=0

" buffers
nnoremap <S-Tab> :bprev<Return>
nnoremap <Tab> :bnext<Return>

" taglist
map <F3> :TlistToggle<CR>
map <c-]> g<c-]>
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Window_Width = 50
let Tlist_Use_Right_Window = 1

" gutentags 
" let g:gutentags_porject_root = ['.root', '.svn', '.git', '.project']
" let g:gutentags_ctags_tagfile = '.tags'
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags

" if !isdirectory(s:vim_tags)
" 	silent! call mkdir(s:vim_tags, 'p')
" endif

" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd vimenter * NERDTree | wincmd p
map <F2> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeHidden=1
let g:NERDTreeShowLineNumbers=1

" nredcommenter
let g:NERDSpaceDelims=1

" winmanager
let g:winManagerWindowLayout = "TagList|FileExplorer,BuffExplorer"
let g:winManagerWidth = 50
map <F4> :WMToggle<CR>

" airline
let g:airline_theme = 'angr'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" indentline 
let g:indentLine_enabled = 1

" YCM
let g:ycm_show_diagnostics_ui = 0

" vim-markdown
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

