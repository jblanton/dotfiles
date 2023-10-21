PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/.cargo/evn
PATH=$PATH:$HOME/opt/homebrew/bin
PATH=$PATH:$HOME

export OPENAI_API_KEY="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"
export PATH="/usr/local/sbin:$PATH"

source "$HOME/.zsh/spaceship/spaceship.zsh"

# PS1=' -> '
# Cursor is a underscore
# echo -e -n "\x1b[\x33 q" # Blinking

autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# case-insensitive (uppercase from lowercase) completion
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# case-insensitive (all) completion
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# case-insensitive,partial-word and then substring completion
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# Set tab titles in Warp to show the working directory
function set_name () {
  echo -ne "\033]0;$PWD\007"
}
precmd_functions+=(set_name)

alias cat="bat"
alias icat="kitty +kitten icat"
alias lls='ls -AFGopnh'
# alias prompt='chatgpt'
alias siege="siege -t10s polymath.net"
alias st='speedtest --secure'
alias python='/opt/homebrew/bin/python3'
alias glances='glances -4 --disable-left-sidebar'
alias pipupdate='/opt/homebrew/bin/pip3 freeze | cut -d = -f 1 | xargs -n 1 /opt/homebrew/bin/pip3 install -Uqq'
alias gitupdate='for dir in ~/lab/git/*; do (cd "$dir" && basename "$(pwd)" && git pull); done'
alias nload='nload devices en0'

source /Users/justin/.config/broot/launcher/bash/br
