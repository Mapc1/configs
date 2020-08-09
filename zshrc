# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep nomatch
unsetopt extendedglob
bindkey -v

neofetch

autoload -U promptinit; promptinit
prompt spaceship
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
