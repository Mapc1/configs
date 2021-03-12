call plug#begin('~/.vim/buttplugs')

"Fugitive
Plug 'tpope/vim-fugitive'

"Float Term
Plug 'voldikss/vim-floaterm'

"VSCode theme
Plug 'tomasiser/vim-code-dark'

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
Plug 'junegunn/fzf.vim'
Plug 'voldikss/fzf-floaterm'
"Conquer of Competion is an autocomplete plug with some aditional features
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Comment lines easily
Plug 'scrooloose/nerdcommenter'

"Typescript sintaxe
Plug 'HerringtonDarkholme/yats.vim'

"IDK what this does
Plug 'tweekmonster/gofmt.vim'

"Does something for man
Plug 'vim-utils/vim-man'

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
nnoremap <C-n> :NERDTreeToggle<CR>

"Window movement
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-Left> :call WinMove('h')<CR>
nnoremap <silent> <C-Down> :call WinMove('j')<CR>
nnoremap <silent> <C-Up> :call WinMove('k')<CR>
nnoremap <silent> <C-Right> :call WinMove('l')<CR>

let g:coc_global_extensions = [
  \ 'coc-clangd',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-cmake',
  \ 'coc-discord-rpc',
  \ 'coc-floaterm',
  \ 'coc-highlight',
  \ 'coc-java'
  \ ]

"Fugitive status line
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

"Aditional settings
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
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
set winheight=999
set mouse=a
