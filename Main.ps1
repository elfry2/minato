$Scripts = @(
  "InstallAndConfigureApache.ps1"
)

foreach ($Script in $Scripts) {
  if($LastExitCode == 0) {
    & Script
  }
}
