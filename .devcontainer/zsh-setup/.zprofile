# alias shell commands
alias m="minikube"
alias mst="minikube status"

# Source custom profile if it exists
if [ -f "$HOME/.zprofile.custom" ]; then
    source "$HOME/.zprofile.custom"
fi
