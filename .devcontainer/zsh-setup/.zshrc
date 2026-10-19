# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="devcontainers"

# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# Format the completion description to yellow
# https://thevaluable.dev/zsh-completion-guide-examples/
# zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'


# plugins to autocomplete commands
plugins=(git kubectl helm minikube docker)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# atuin and zoxide
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"

# Bun to the path
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH:$BUN_INSTALL/bin/"

# Add the local bin to the path
export PATH="$PATH:$HOME/.local/bin/"

# load zprofile
source $HOME/.zprofile

# Source custom profile if it exists
if [ -f "$HOME/.zprofile.custom" ]; then
    source "$HOME/.zprofile.custom"
fi
