#Requires -Version 5.1

param (
    [Parameter(Mandatory=$true)] $languageTag
)

$languageList = Get-WinUserLanguageList
$languageList.Add($languageTag)
Set-WinUserLanguageList $languageList -Force
"Language $languageTag is added successfully"