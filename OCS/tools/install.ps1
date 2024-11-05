$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerFile = Join-Path $toolsDir "OCS-Windows-Agent-Setup-x64.exe"

# Ejecuta el instalador en modo interactivo
Start-Process -FilePath $installerFile -Wait
