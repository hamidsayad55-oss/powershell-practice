$Query = "Select * from Win32_Product"
Write-Host "Counting Installed Products. This may take a little while." -ForegroundColor Blue `n
Get-CimInstance -Query $Query
# Start timer
$dteStart = Get-Date

# Query MSI installed products
$Query = "Select * from Win32_Product"

Write-Host "Counting Installed Products. This may take a little while." -ForegroundColor Blue `n

Get-CimInstance -Query $Query

# End timer
$dteEnd = Get-Date

# Compute time difference
$dteDiff = New-TimeSpan $dteStart $dteEnd

Write-Host "It took $($dteDiff.TotalSeconds) Seconds for this script to complete" -ForegroundColor Yellow
gcim Win32_Environment
gcim Win32_Environment | Format-List *
gcim Win32_Environment | Format-Table Name, VariableValue, UserName
gcim Win32_Environment | Format-Table Name, VariableValue
gcim Win32_Environment | Format-Table Name, VariableValue -AutoSize
Set-Location env:
sl env:
Get-ChildItem
Get-Alias -Definition Invoke-History
ghy
Get-History
sl env:; gci; sl c:\
