source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# theme
eval "$(starship init zsh)"

### RANDOM COLOR SCRIPT ###
colorscript random

# neofetch
# alias
alias ls='exa --color=always --group-directories-first' # my preferred listing
alias la='exa --color=always --group-directories-first' # all files and dirs
alias ll='exa -l --color=always --group-directories-first' # long format
alias lla='exa -la --color=always --group-directories-first' # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias cl='clear' # xoa mh

alias nvim='~/.local/bin/lvim' # xoa mh


export PATH="/home/ty/.local/bin/lvim:$PATH"
alias config='/usr/bin/git --git-dir=/home/ty/.cfg/ --work-tree=/home/ty'
