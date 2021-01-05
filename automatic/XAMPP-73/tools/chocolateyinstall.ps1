﻿$ErrorActionPreference = 'Stop';
$checksum = 'ad143e2cfb8307e35d234b883e68045e895ec267de60c5a5c5bfb8a1d115f812'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.3.24/xampp-windows-x64-7.3.24-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-73'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
