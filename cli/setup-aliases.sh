#!/bin/bash

# Agregar aliases al archivo de configuración de la terminal
echo 'alias vl="vtex link"' >> ~/.zshrc
echo 'alias vli="vtex login"' >> ~/.zshrc
echo 'alias vlo="vtex logout"' >> ~/.zshrc
echo 'alias vw="vtex whoami"' >> ~/.zshrc
echo 'alias yd="yarn dev"' >> ~/.zshrc
echo 'alias ga="git add ."' >> ~/.zshrc
echo 'alias gc="git commit -m"' >> ~/.zshrc
echo 'alias gph="git push"' >> ~/.zshrc
echo 'alias gpl="git pull"' >> ~/.zshrc
echo 'alias gs="git status"' >> ~/.zshrc
echo 'vs() {
    if [ $# -ne 2 ]; then
        echo "Uso: vs <account> <workspace>"
        return 1
    fi
    vtex switch $1 -w $2
}' >> ~/.zshrc

# Recargar la configuración de la terminal
source ~/.zshrc

echo "Aliases configurados correctamente."