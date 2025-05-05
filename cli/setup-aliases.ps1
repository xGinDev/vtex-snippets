# Crear el perfil si no existe
if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

# Agregar funciones en lugar de aliases
Add-Content -Path $PROFILE -Value "function vl { vtex link @args }"
Add-Content -Path $PROFILE -Value "function vli { vtex login @args }"
Add-Content -Path $PROFILE -Value "function vlo { vtex logout @args }"
Add-Content -Path $PROFILE -Value "function vw { vtex whoami @args }"
Add-Content -Path $PROFILE -Value "function vu { vtex use @args }"
Add-Content -Path $PROFILE -Value "function vst { vtex setup @args }"
Add-Content -Path $PROFILE -Value "function vls { vtex list @args }"
Add-Content -Path $PROFILE -Value "function vup { vtex update @args }"
Add-Content -Path $PROFILE -Value "function vwd { vtex workspace delete @args }"
Add-Content -Path $PROFILE -Value "function vwl { vtex workspace list @args }"
Add-Content -Path $PROFILE -Value "function vwr { vtex workspace reset @args }"
Add-Content -Path $PROFILE -Value "function vrms { vtex release major stable @args }"
Add-Content -Path $PROFILE -Value "function vrms { vtex release minor stable @args }"
Add-Content -Path $PROFILE -Value "function vrps { vtex release patch stable @args }"
Add-Content -Path $PROFILE -Value "function vwp { vtex workspace promote @args }"
Add-Content -Path $PROFILE -Value "function vpv { vtex publish --verbose @args }"
Add-Content -Path $PROFILE -Value "function vdf { vtex deploy --force @args }"
Add-Content -Path $PROFILE -Value "function vi { vtex install @args }"
Add-Content -Path $PROFILE -Value "function yd { yarn dev @args }"
Add-Content -Path $PROFILE -Value "function ga { git add . @args }"
Add-Content -Path $PROFILE -Value "function gc { git commit -m @args }"
Add-Content -Path $PROFILE -Value "function gph { git push @args }"
Add-Content -Path $PROFILE -Value "function gpl { git pull @args }"
Add-Content -Path $PROFILE -Value "function gs { git status @args }"
Add-Content -Path $PROFILE -Value "function gb { git branch @args }"
Add-Content -Path $PROFILE -Value "function gba { git branch -a @args }"
Add-Content -Path $PROFILE -Value "function gbd { git branch -d @args }"
Add-Content -Path $PROFILE -Value "function gc { git checkout @args }"
Add-Content -Path $PROFILE -Value "function gcb { git checkout -b @args }"
Add-Content -Path $PROFILE -Value "function gcba { git checkout - @args }"

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

# Función para vtex link con account y workspace
Add-Content -Path $PROFILE -Value @"
function vsl {
    param (
        [string]`$account,
        [string]`$workspace
    )
    if (-not `$account -or -not `$workspace) {
        Write-Host "Uso: vsl <account> <workspace>"
        return
    }
    vtex link -a `$account -w `$workspace
}
"@

# Recargar el perfil
try {
    . $PROFILE
    Write-Host "Funciones configuradas correctamente."
} catch {
    Write-Host "Error al recargar el perfil: $_"
}