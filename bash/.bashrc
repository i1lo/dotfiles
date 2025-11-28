
[[ $- != *i* ]] && return

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
# Avoid duplicates in history
export HISTCONTROL=ignoredups:erasedups

alias cls='clear'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

mkcd() { mkdir -p "$1" && cd "$1"; }

alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit -am'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gco='git checkout'
alias gb='git branch'
alias gcl='git clone'
alias gr='git remote -v'
alias gpm='git push origin main'
alias gpl='git pull'
alias gundo='git reset --soft HEAD~1' # undo last commit keeping changes


eval "$(oh-my-posh init bash --config ~/AppData/Local/Programs/oh-my-posh/themes/omptheme.omp.json)"

