#!/bin/bash

#VTEX
echo 'alias vls="vtex list"' >> ~/.zshrc
echo 'alias vl="vtex link"' >> ~/.zshrc
echo 'alias vli="vtex login"' >> ~/.zshrc
echo 'alias vlo="vtex logout"' >> ~/.zshrc
echo 'alias vw="vtex whoami"' >> ~/.zshrc
echo 'alias vu="vtex use"' >> ~/.zshrc
echo 'alias vst="vtex setup"' >> ~/.zshrc
echo 'alias vup="vtex update"' >> ~/.zshrc
echo 'alias vwd="vtex workspace delete"' >> ~/.zshrc
echo 'alias vwl="vtex workspace list"' >> ~/.zshrc
echo 'alias vwr="vtex workspace reset"' >> ~/.zshrc
echo 'alias vrmjs="vtex release major stable"' >> ~/.zshrc
echo 'alias vrms="vtex release minor stable"' >> ~/.zshrc
echo 'alias vrps="vtex release patch stable"' >> ~/.zshrc
echo 'alias vwp="vtex workspace promote"' >> ~/.zshrc
echo 'alias vpv="vtex publish --verbose"' >> ~/.zshrc
echo 'alias vdf="vtex deploy --force"' >> ~/.zshrc
echo 'alias vuni="vtex uninstall"' >> ~/.zshrc
echo 'alias vunl="vtex unlink"' >> ~/.zshrc


#Git
echo 'alias gint="git init"' >> ~/.zshrc
echo 'alias ga="git add ."' >> ~/.zshrc
echo 'alias gph="git push"' >> ~/.zshrc
echo 'alias gpl="git pull"' >> ~/.zshrc
echo 'alias gs="git status"' >> ~/.zshrc
echo 'alias gb="git branch"' >> ~/.zshrc
echo 'alias gba="git branch -a"' >> ~/.zshrc
echo 'alias gbd="git branch -d"' >> ~/.zshrc
echo 'alias gcb="git checkout -b"' >> ~/.zshrc
echo 'alias gcba="git checkout -"' >> ~/.zshrc


#Yarn
echo 'alias yi="yarn install"' >> ~/.zshrc
echo 'alias yst="yarn start"' >> ~/.zshrc
echo 'alias yd="yarn dev"' >> ~/.zshrc
echo 'alias ys="yarn start"' >> ~/.zshrc
echo 'alias yb="yarn build"' >> ~/.zshrc
echo 'alias yss="yarn sass"' >> ~/.zshrc


#Functions
echo 'vs() {
    if [ $# -ne 2 ]; then
        echo "Uso: vs <account> <workspace>"
        return 1
    fi
    vtex switch $1 -w $2
}' >> ~/.zshrc

# Remove the old gcm alias if it exists
echo 'unset -f gcm 2>/dev/null || true' >> ~/.zshrc

echo 'gcmm() {
    message=$1
    git commit -m "$message"
}' >> ~/.zshrc

# Reload the terminal configuration
source ~/.zshrc

echo "Aliases configured successfully."