$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerFile = Join-Path $toolsDir "mysql-connector-odbc-5.1.6-winx64.msi"

$packageArgs = @{
    packageName = 'my-sql'       
    fileType    = 'msi'                 
    silentArgs  = '/quiet /norestart'  
    file        = $installerFile         
}


Install-ChocolateyPackage @packageArgs
