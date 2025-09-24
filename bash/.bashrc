# ~/.bashrc

# Only run if the shell is interactive
[[ $- != *i* ]] && return

# Source global definitions if they exist
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# --- Usability Settings ---
# Increase history size
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend
# Avoid duplicates in history
export HISTCONTROL=ignoredups:erasedups

# Clear terminal easily
alias cls='clear'

# Quick navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Create directory and enter it
mkcd() { mkdir -p "$1" && cd "$1"; }

# Better listing
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# --- Git Aliases ---
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

# --- Personal Shortcuts ---
alias luna='"C:\Users\hax\Luna\Luna.exe"'

# --- Oh My Posh ---
eval "$(oh-my-posh init bash --config ~/AppData/Local/Programs/oh-my-posh/themes/omptheme.omp.json)"

# --- Custom Colored Prompt ---
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

# PS1 shows current directory, Git branch, and colors
export PS1="\[\e[32m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[0m\] $ "

# Disable terminal bell
set bell-style none

