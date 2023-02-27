param (
    [Parameter(Mandatory=$true)] $languageTag
)

$languageList = Get-WinUserLanguageList
$updatedLanguageList = $languageList | Where-Object { $_.LanguageTag -ne $languageTag }
if ($updatedLanguageList.Count -lt $languageList.Count) {
    Set-WinUserLanguageList $updatedLanguageList -Force
    "Language $languageTag is removed successfully"
}
else {
    "Language $languageTag is not found"
}
