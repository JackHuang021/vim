" vim-plug 
call plug#begin()

Plug 'tomasr/molokai'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'preservim/vim-markdown'
Plug 'gwww/vim-bbye'
Plug 'w0rp/ale'
Plug 'yggdroot/leaderf'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" general settings
let mapleader=","
set nocompatible
filetype on
filetype plugin on
set noeb
syntax enable
syntax on
set showmode
set showcmd
set cursorline
set scrolloff=5
set laststatus=2
set ruler
set number
set virtualedit=block,onemore
set mouse=a
set history=200
set autoread
set wrap
set wildmenu
set nobackup
set noswapfile
set confirm

" encoding settings
set encoding=utf-8
set termencoding=utf-8

" theme
set background=dark
set t_Co=256
colorscheme molokai

" code indentation and layout
set autoindent
set cindent
set smartindent
filetype indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set showmatch
set hlsearch
set smartcase
set noundofile
set cc=80
set hidden

set wildmode=longest:list,full

" set to avoid highlight match paren
let loaded_matchparen = 1               " set to avoid highlight match paren

" copy and paste
set clipboard^=unnamed,unnamedplus

" show space and table characters
set list
set listchars=tab:>-,trail:-

set conceallevel=0

" disable auto insert after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=crona

set ttimeout
set ttimeoutlen=100


" search settings
set ignorecase
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<CR>n
noremap N :set hlsearch<CR>N
noremap / :set hlsearch<CR>/
noremap ? :set hlsearch<CR>?
noremap * *:set hlsearch<CR>

" buffers
nnoremap <S-Tab> :bprev<Return>
nnoremap <Tab> :bnext<Return>

" tagbar
nmap <F3> :TagbarToggle<CR>
let g:tagbar_width = 50
let g:tagbar_right = 1
" not sort tags by name
let g:tagbar_sort = 0
autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx call tagbar#autoopen()

" cscope
if has("cscope")
    set csre
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>

" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeHidden=1
let g:NERDTreeShowLineNumbers=0
autocmd vimenter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeWinSize = 40

" nredcommenter
let g:NERDSpaceDelims = 1

" airline
let g:airline_theme = 'angr'
let g:aielien_solarized_bg = 'dark'
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

" youcompleteme
set completeopt=menu,menuone
let g:ycm_auto_hover = ''
let g:ycm_collect_identifier_from_comments_and_strings = 1
let g:ycm_enable_semantic_highlighting = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_max_num_candidates = 20
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_semantic_triggers = {
							\ 'c,cpp': ['re!\w{2}'],
						\ }
let g:ycm_global_ycm_extra_conf = "/home/jack/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
" not auto insert header files when coding
let g:ycm_clangd_args = ['--header-insertion=never']
" nnoremap <F12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F12> :YcmCompleter GoToDefinition<CR>

" vim_markdown
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" vim bbye
nnoremap <leader>d :Bd<CR>

" ale
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_sign_column_always = 1

" LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-l>'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.project', '.root']
let g:Lf_ReverseOrder = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}

" ctrlp
noremap <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_cmd = 'CtrlP'
