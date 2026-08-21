# Clean the Current User's Temp Folder
Get-ChildItem -Path "$env:TEMP\*" -Recurse | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

# Clean the Windows System Temp Folder
Get-ChildItem -Path "$env:windir\Temp\*" -Recurse | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
