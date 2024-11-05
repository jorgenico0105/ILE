$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerFile = Join-Path $toolsDir "CRXI_RDC_Redistribution.msi"

$packageArgs = @{
    packageName = 'CRXI-RDC'       
    fileType    = 'msi'                 
    silentArgs  = '/quiet /norestart'  
    file        = $installerFile         
}


Install-ChocolateyPackage @packageArgs
