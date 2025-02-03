# Agregar aliases al perfil de PowerShell
Add-Content -Path $PROFILE -Value "Set-Alias -Name vl -Value vtex link"
Add-Content -Path $PROFILE -Value "Set-Alias -Name yd -Value yarn dev"

# Recargar el perfil de PowerShell
. $PROFILE

Write-Host "Aliases configurados correctamente."