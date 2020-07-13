call plug#begin('~/.vim/buttplugs')

"VSCode theme
Plug 'tomasiser/vim-code-dark'

"Conquer of Competion is an autocomplete plug with some aditional features
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Nerd tree for file searching
Plug 'scrooloose/nerdtree'

"Git integration for Nerd Tree
Plug 'tsony-tsonev/nerdtree-git-plugin'

"Sintax highliting for Nerd Tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Icons for Nerd Tree
Plug 'ryanoasis/vim-devicons'

"Shows file changes for git
Plug 'airblade/vim-gitgutter'

"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"Comment lines easily
Plug 'scrooloose/nerdcommenter'

"Typescript sintaxe
Plug 'HerringtonDarkholme/yats.vim'

"IDK what this does
Plug 'tweekmonster/gofmt.vim'

"Does something for man
Plug 'vim-utils/vim-man'

"Auto Pairs brackets and parenthesies
Plug 'jiangmiao/auto-pairs'

"Vim pretier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

colorscheme codedark

"NerdTree settings
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
imap <C-n> :NERDTreeToggle<CR>

syntax on

set noerrorbells 

set tabstop=4 softtabstop=4

set shiftwidth=4

set expandtab

set smartindent

set nu

set nowrap

set smartcase

set noswapfile

set undodir=~/.vim/undodir

set undofile

set incsearch
