let g:mapleader = "\<Space>"

syntax enable
set hidden
set pumheight=10
set nocompatible
set ruler
set nowrap
set mouse=a
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set cmdheight=2
set smartindent
set autoindent
set laststatus=0
set number
set cursorline
set background=dark
set showtabline=2
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set formatoptions-=cro
set clipboard=unnamedplus
au! BufWritePost $MYVIMRC source %

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better window navigation
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-Up>    :resize -2<CR>
nnoremap <M-Down>    :resize +2<CR>
nnoremap <M-Right>    :vertical resize -2<CR>
nnoremap <M-Left>    :vertical resize +2<CR>

" Easy CAPS
inoremap <S-Up> <ESC>viwUi
nnoremap <S-Up> viwU<Esc>

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'                         |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'            |
	\ Plug 'ryanoasis/vim-devicons'	                |
	\ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Tagbar keybind
nmap <F8> :TagbarToggle<CR>

" FSSwitch
nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>

" NerdTree Stuff
" NerdTree key-bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
