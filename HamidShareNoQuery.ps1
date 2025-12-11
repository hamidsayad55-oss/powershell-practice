$Filter = "name='c$'"
Get-CimInstance -ClassName Win32_Share -Filter $Filter
Get-CimInstance -ClassName Win32_Share -Filter $Filter |
Format-List *
$Filter = "name='c$'"
Get-CimInstance -ClassName Win32_Share -Filter $Filter |
Format-List *
$Query = "Select name from Win32_Share where name > 'd'"

Get-CimInstance -Query $Query |
Sort-Object -Property name |
Format-List -Property name
$Query = "Select startName, name from Win32_Service"
Get-CimInstance -Query $Query |
Sort-Object startName, name |
Format-List name, startName
