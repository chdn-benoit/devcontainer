# Format the completion description to yellow
# https://thevaluable.dev/zsh-completion-guide-examples/
# zstyle ':completion:*:descriptions' format '%F{yellow}%d%f'

# Add the local bin to the path
export PATH="$PATH:$HOME/.local/bin/"

# Bun to the path
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH:$BUN_INSTALL/bin/"

# Load the completion script
autoload -Uz compinit && compinit

# alias shell commands
alias m="minikube"
alias mst="minikube status"

eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"