# zprezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# theme
eval "$(starship init zsh)"

# editor
export EDITOR='nvim'

### RANDOM COLOR SCRIPT ###
colorscript random

# config dotfile
alias config='/usr/bin/git --git-dir=/home/ty/.cfg/ --work-tree=/home/ty'

# path .local/bin/
export PATH="/home/ty/.local/bin:$PATH"

# alias
alias ls='exa --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lla='exa -la --color=always --group-directories-first'
alias lt='exa -T --color=always --group-directories-first'
alias lta='exa -aT --color=always --group-directories-first'
alias cl='clear' # xoa mh
# alias fzf='fzf --preview "bat --style=numbers --color=always --line-range :501 {}"'  #fzf

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"



# Color-Toys Aliases
alias 256colors2="${HOME}/.color-toys/256colors2.pl"
alias bloks="${HOME}/.color-toys/bloks"
alias colortest="${HOME}/.color-toys/colortest"
alias colortest-slim="${HOME}/.color-toys/colortest-slim"
alias colorview="${HOME}/.color-toys/colorview"
alias colorbars="${HOME}/.color-toys/colorbars"
alias panes="${HOME}/.color-toys/panes"
alias pipes1="${HOME}/.color-toys/pipes1"
alias pipes2="${HOME}/.color-toys/pipes2"
alias pipes2-slim="${HOME}/.color-toys/pipes2-slim"


# tim kiem package
function package_visual_query() {
    case $1 in
    'p')
        pacman -Slq | fzf -m --preview 'bat <(pacman -Si {1}) <(pacman -Fl {1} | awk "{print \$2}")' | xargs -ro sudo pacman -S
        ;;
    'y')
        yay -Slq | fzf -m --preview 'bat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' | xargs -ro yay -S
        ;;
    esac
}
alias pq='package_visual_query p'
alias yq='package_visual_query y'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
