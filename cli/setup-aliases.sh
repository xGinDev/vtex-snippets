#!/bin/bash

# Agregar aliases al archivo de configuración de la terminal
echo 'alias vl="vtex link"' >> ~/.zshrc
echo 'alias yd="yarn dev"' >> ~/.zshrc

# Recargar la configuración de la terminal
source ~/.zshrc

echo "Aliases configurados correctamente."