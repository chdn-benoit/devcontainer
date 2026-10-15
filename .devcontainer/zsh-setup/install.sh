#!/bin/sh
set -e

# get the directory of the script
FEATURE_DIR="$(cd "$(dirname "$0")" && pwd)"
# get the username from the environment variable or the remote user
USERNAME="${USERNAME:-"${_REMOTE_USER:-"automatic"}"}"

# Determine the appropriate non-root user
if [ "${USERNAME}" = "auto" ] || [ "${USERNAME}" = "automatic" ]; then
    USERNAME=""
    POSSIBLE_USERS="devcontainer vscode node codespace $(awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd)"
    for CURRENT_USER in $POSSIBLE_USERS; do
        if id -u $CURRENT_USER > /dev/null 2>&1; then
            USERNAME=$CURRENT_USER
            break
        fi
    done
    if [ "${USERNAME}" = "" ]; then
        USERNAME=root
    fi
elif [ "${USERNAME}" = "none" ] || ! id -u ${USERNAME} > /dev/null 2>&1; then
    USERNAME=root
fi

USERHOME="/home/$USERNAME"
if [ "$USERNAME" = "root" ]; then
    USERHOME="/root"
fi


# copy and overwrite the .zshrc and .zprofile files in the home directory
cp -f $FEATURE_DIR/.zshrc $USERHOME/.zshrc
cp -f $FEATURE_DIR/.zprofile $USERHOME/.zprofile

# Source custom profile if it exists
if [ -f "$$FEATURE_DIR/.zprofile.custom" ]; then
    cp -f $FEATURE_DIR/.zprofile.custom $USERHOME/.zprofile.custom
fi
