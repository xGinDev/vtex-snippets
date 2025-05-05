#!/bin/bash

# Agregar aliases al archivo de configuración de la terminal
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
echo 'alias vrms="vtex release major stable"' >> ~/.zshrc
echo 'alias vrms="vtex release minor stable"' >> ~/.zshrc
echo 'alias vrps="vtex release patch stable"' >> ~/.zshrc
echo 'alias vwp="vtex workspace promote"' >> ~/.zshrc
echo 'alias vpv="vtex publish --verbose"' >> ~/.zshrc
echo 'alias vdf="vtex deploy --force"' >> ~/.zshrc
echo 'alias vi="vtex install"' >> ~/.zshrc
echo 'alias yd="yarn dev"' >> ~/.zshrc
echo 'alias ga="git add ."' >> ~/.zshrc
echo 'alias gc="git commit -m"' >> ~/.zshrc
echo 'alias gph="git push"' >> ~/.zshrc
echo 'alias gpl="git pull"' >> ~/.zshrc
echo 'alias gs="git status"' >> ~/.zshrc
echo 'alias gb="git branch"' >> ~/.zshrc
echo 'alias gba="git branch -a"' >> ~/.zshrc
echo 'alias gbd="git branch -d"' >> ~/.zshrc
echo 'alias gc="git checkout"' >> ~/.zshrc
echo 'alias gcb="git checkout -b"' >> ~/.zshrc
echo 'alias gcba="git checkout -"' >> ~/.zshrc
echo 'vs() {
    if [ $# -ne 2 ]; then
        echo "Uso: vs <account> <workspace>"
        return 1
    fi
    vtex switch $1 -w $2
}' >> ~/.zshrc
echo 'vsl() {
    if [ $# -ne 2 ]; then
        echo "Uso: vs <account> <workspace>"
        return 1
    fi
    vtex link -a $1 -w $2
}' >> ~/.zshrc

# Recargar la configuración de la terminal
source ~/.zshrc

echo "Aliases configurados correctamente."