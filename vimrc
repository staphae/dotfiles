set nocompatible              " be iMproved, required
filetype off                  " required
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== PLUGINS ====
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/L9'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
"Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'tpope/vim-surround'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'godlygeek/tabular'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'christoomey/vim-navigator'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'mattn/emmet-vim'
"Plugin 'sjl/gundo.vim'

" ==== PLUGIN THEMES ====
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/darktango.vim'
"Plugin 'jonathanfilip/vim-lucius'
" ==== END PLUGIN THEMES ====

" ==== PLUGIN SYNTAXES ====
Plugin 'hdima/python-syntax'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'evanmiller/nginx-vim-syntax'
" === END PLUGIN SYNTAXES ====

" === END PLUGIN STATUSBAR ====
"Plugin 'ervandew/supertab'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" === END PLUGIN STATUSBAR ====
"
" ==== END PLUGINS ====

call vundle#end()
filetype plugin indent on

" ==== BASIC ====
set diffopt+=vertical
set encoding=utf-8
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
set ruler
set hidden
set number
set laststatus=2
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
"let &colorcolumn="80"
":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar
":set lines=999 columns=999

" Specify areas on the sreen where split should occure
set splitbelow
set splitright
" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Control Nertree with mouse
set mouse=a
" ==== NERDTREE ====
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '\.swo', '\.swn', '\.swm', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic ====
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
"let g:syntastic_yaml_checkers = ['jsyaml']
"let g:syntastic_html_tidy_exec = 'tidy5'

" ==== Easymotion ====
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_smartcase = 1
"nmap f <Plug>(easymotion-s)

"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>

set secure
" ==== TAB NAVIGATION ====
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" ==== RELATIVE LINE NUMBERS ====
set relativenumber
"Vime ignore these file patterns
set wildignore+=*/.git/*,/tmp/*,*.swp,*.pyc,.*
" ==== SOLARIZED COLOR SCHEME ====
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=16
"colorscheme gruvbox

" ==== HIGHLIGHT TABS & WHITESPACES====
set listchars=tab:>~,nbsp:_,trail:.
set list
" ==== SPACES FOR TABS ====
set smartindent
set expandtab
set sw=3 ts=3 sts=3

set cursorline
set showmatch
set autoindent
set showmatch
let python_highlight_all=1
"===== SEARCH PATH =======
set path+=$HOME/workspace
" ==== SPACES FOR TABS ====
"nnoremap <silent> <F5> :source $HOME/.vimrc<CR>

set pastetoggle=<F3>
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with space separator
nnoremap <sapce> za
" Ease moving between normal and insert modes
nnoremap ; :
inoremap jk <ESC>
inoremap kj <ESC>

" Perform incremental search and highliht serach results
set incsearch
set hlsearch
set cindent

" Map leader key
let mapleader=","

