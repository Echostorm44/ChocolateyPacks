$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Echostorm44/QuickFixMyPic/releases/download/1.0.0/SetupQuickFixMyPic.msi'
$url64      = 'https://github.com/Echostorm44/QuickFixMyPic/releases/download/1.0.0/SetupQuickFixMyPic.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'QuickFixMyPic*'

  checksum      = '9A3A1AFAFA897B2AD2D92DEB7517171C704172BA4819243472BC434ECD32C1EA'
  checksumType  = 'sha256'
  checksum64    = '9A3A1AFAFA897B2AD2D92DEB7517171C704172BA4819243472BC434ECD32C1EA'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

















