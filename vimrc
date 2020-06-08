call plug#begin('~/.vim/buttplugs')

" Vim Nord theme
Plug 'arcticicestudio/nord-vim'

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

call plug#end()

colorscheme nord

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
