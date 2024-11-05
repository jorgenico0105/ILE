$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerFile = Join-Path $toolsDir "FortiClientVPN.msi"

$packageArgs = @{
    packageName = 'forty-client'       
    fileType    = 'msi'                 
    silentArgs  = '/quiet /norestart'  
    file        = $installerFile         
}


Install-ChocolateyPackage @packageArgs
