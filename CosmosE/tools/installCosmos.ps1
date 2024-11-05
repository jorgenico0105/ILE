$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$setupFile = Join-Path $toolsDir "setup.exe"
$supportDir = Join-Path $toolsDir "Support"

if (!(Test-Path $setupFile)) {
    Write-Host "Error: El archivo de instalación 'setup.exe' no se encuentra en el directorio tools."
    exit 1
}

if (!(Test-Path $supportDir)) {
    Write-Host "Error: La carpeta 'Support' no se encuentra en el directorio tools."
    exit 1
}

$supportFiles = Get-ChildItem -Path $supportDir -Include *.dll, *.bat, *.ocx, *.exe
if ($supportFiles.Count -eq 0) {
    Write-Host "Advertencia: No se encontraron archivos de soporte en la carpeta 'Support'."
} else {
    Write-Host "Archivos de soporte encontrados en 'Support':"
    $supportFiles | ForEach-Object { Write-Host $_.Name }
}


Start-Process -FilePath $setupFile -ArgumentList "/silent" -Wait
Write-Host "Instalación de Cosmos completada."
