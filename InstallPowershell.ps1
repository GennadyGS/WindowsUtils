param (
  [switch] $Quiet
)

if ($Quiet) { $quietArg = "-Quiet" }
Invoke-Expression `
    "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI $quietArg"