$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$exeFile = Join-Path $toolsDir "KMSAuto++.exe"
$iniFile = Join-Path $toolsDir "KMSAuto++.ini"

if (Test-Path $iniFile) {
    Copy-Item -Path $iniFile -Destination $toolsDir
} else {
    Write-Host "Advertencia: El archivo KMSAuto++.ini no se encontró."
}


Start-Process -FilePath $exeFile -Wait
Write-Host "Instalación de KMSAuto++ completada."
