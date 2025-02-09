# Crear el perfil si no existe
if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

# Agregar funciones en lugar de aliases
Add-Content -Path $PROFILE -Value "function vl { vtex link @args }"
Add-Content -Path $PROFILE -Value "function vli { vtex login @args }"
Add-Content -Path $PROFILE -Value "function vlo { vtex logout @args }"
Add-Content -Path $PROFILE -Value "function vw { vtex whoami @args }"
Add-Content -Path $PROFILE -Value "function yd { yarn dev @args }"
Add-Content -Path $PROFILE -Value "function ga { git add . @args }"
Add-Content -Path $PROFILE -Value "function gc { git commit -m @args }"
Add-Content -Path $PROFILE -Value "function gph { git push @args }"
Add-Content -Path $PROFILE -Value "function gpl { git pull @args }"
Add-Content -Path $PROFILE -Value "function gs { git status @args }"

# Función para vtex switch
Add-Content -Path $PROFILE -Value @"
function vs {
    param (
        [string]`$account,
        [string]`$workspace
    )
    if (-not `$account -or -not `$workspace) {
        Write-Host "Uso: vs <account> <workspace>"
        return
    }
    vtex switch `$account -w `$workspace
}
"@

# Recargar el perfil
try {
    . $PROFILE
    Write-Host "Funciones configuradas correctamente."
} catch {
    Write-Host "Error al recargar el perfil: $_"
}