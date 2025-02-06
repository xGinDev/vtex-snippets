# Agregar funciones en lugar de alias
Add-Content -Path $PROFILE -Value @"
function vl { vtex link }
function vli { vtex login }
function vlo { vtex logout }
function vw { vtex whoami }
function yd { yarn dev }

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

# Recargar el perfil correctamente
if (Test-Path $PROFILE) {
    . $PROFILE
    Write-Host "El perfil de PowerShell se ha recargado correctamente."
} else {
    Write-Host "El perfil de PowerShell no existe."
}
