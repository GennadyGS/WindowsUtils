param (
  [switch] $Quiet
)

Invoke-Expression `
    "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI $($Quiet ? '-Quiet' : '')"