function Get-WUAHistory
{
$Session = New-Object -ComObject "Microsoft.Update.Session"
$Searcher = $Session.CreateUpdateSearcher()
$historyCount = $Searcher.GetTotalHistoryCount()
$Searcher.QueryHistory(0, $historyCount) | Select-Object Title, Description, Date,
    @{name="Operation"; expression={switch($_.operation){
        1 {"Installation"}; 2 {"Uninstallation"}; 3 {"Other"}
}}}
}
Write-Host "Windows 2016"
Get-WUAHistory | Select-String "KB5006669"
Write-Host "Windows 2019"
Get-WUAHistory | Select-String "KB5006672"
Write-Host "Windows 2012 R2"
Get-WUAHistory | Select-String "KB5006714"
Write-Host "Windows 2012 R2"
Get-WUAHistory | Select-String "KB5006729"
Write-Host "Windows 2012"
Get-WUAHistory | Select-String "KB5006739"
Write-Host "Windows 2012"
Get-WUAHistory | Select-String "KB5006732"
Write-Host "Windows 2008 R2 SP2"
Get-WUAHistory | Select-String "KB5006736"
Write-Host "Windows 2008 R2 SP2"
Get-WUAHistory | Select-String "KB5006715"

