$Scripts = @(
  "InstallScoop.ps1",
  "AddRequiredScoopBuckets.ps1"
)

foreach ($Script in $Scripts) {
  if($LastExitCode == 0) {
    & Script
  }

  else {
    Exit 1
  }
}
