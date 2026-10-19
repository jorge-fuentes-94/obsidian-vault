# Copia de seguridad de la vault en GitHub, a demanda.
# Uso: clic derecho > «Ejecutar con PowerShell», o desde una terminal:  .\copia-vault.ps1 "mensaje opcional"
param([string]$Mensaje = "")
$vault = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
Set-Location $vault
$fecha = Get-Date -Format "yyyy-MM-dd HH:mm"
if (-not $Mensaje) { $Mensaje = "Copia $fecha" }
git add -A
$cambios = git status --porcelain
if ($cambios) { git commit -q -m $Mensaje; Write-Host "Commit: $Mensaje" } else { Write-Host "No hay cambios nuevos." }
if (git remote) { git pull --no-rebase -q; git push -q; Write-Host "Subido a $(git remote get-url origin)" } else { Write-Host "Sin repositorio remoto configurado: la copia queda solo en este PC." }
