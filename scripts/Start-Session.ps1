Set-PSReadlineOption -HistorySavePath "$PSScriptRoot/History.txt" -HistorySaveStyle SaveNothing

[Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()

Get-Content "$PSScriptRoot/History.txt" | ForEach-Object {
    [Microsoft.PowerShell.PSConsoleReadLine]::AddToHistory($_)
}

Clear-Host