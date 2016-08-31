Param(
  [string]$build
)

# Update the build number
(gc .\libirecovery.autoconfig).replace('{build}', $build)|sc .\libirecovery.out.autoconfig

# Create the NuGet package
Import-Module "C:\Program Files (x86)\Outercurve Foundation\modules\CoApp"
Write-NuGetPackage .\libirecovery.out.autoconfig