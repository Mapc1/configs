# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch
unsetopt extendedglob
bindkey -v

export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git --exclude .vim'

autoload -U promptinit; promptinit
prompt spaceship

neofetch

ex ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tbz2)     tar xjf $1  ;;
            *.tar.bz2)  tar xjf $1  ;;
            *.tar)      tar xzf $1  ;;
            *.tar.gz)   tar xzf $1  ;;
            *.tgz)      tar xzf $1  ;;
            *.tar.xz)   tar xf  $1  ;;
            *.gz)       tar xf  $1  ;;
            *.tar.zst)  unzstd  $1  ;;
            *.bz2)      bunzip  $1  ;;
            *.rar)      unrar x  $1  ;;
            *.zip)      unzip   $1  ;;
            *.Z)        uncompress $1   ;;
            *.7z)       7z  x   $1  ;;
            *.deb)      ar  x   $1  ;;
            *)          echo    "'$1' cannot be extracted via ex()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marco/.zshrc'

alias menu='cd /usr/share/applications && ls'

#git aliases
alias g='git'

alias gs='git status'

alias gc='git commit -m'

alias ga='git add'

alias gall='git add .'

alias gcl='git clone'

alias glg='git log'

alias gu='git add -u'

alias gpsh='git push'

alias gpll='git pull'

alias gsth='git stash'

ulimit -c unlimited

autoload -Uz compinit
compinit

# End of lines added by compinstall
