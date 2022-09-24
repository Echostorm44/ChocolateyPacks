$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Echostorm44/QuickFixMyPic/releases/download/1.0.1.0/SetupQuickFixMyPic.msi'
$url64      = 'https://github.com/Echostorm44/QuickFixMyPic/releases/download/1.0.1.0/SetupQuickFixMyPic.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'QuickFixMyPic*'

  checksum      = '68C54E339C4CAB6F063A8A5E456C78C80AC0E12391DB70304C51CC36000E861D'
  checksumType  = 'sha256'
  checksum64    = '68C54E339C4CAB6F063A8A5E456C78C80AC0E12391DB70304C51CC36000E861D'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

















