# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="devcontainers"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# plugins to autocomplete commands
plugins=(git kubectl helm minikube docker)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load zprofile
source $HOME/.zprofile

