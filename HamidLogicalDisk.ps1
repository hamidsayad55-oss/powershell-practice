gcim Win32_LogicalDisk
gcim Win32_LogicalDisk -Filter 'DriveType = 3'
$Disk = Get-CimInstance Win32_LogicalDisk -Filter 'DriveType = 3'
$Disk
$Disk = Get-CimInstance Win32_LogicalDisk -Filter 'DriveType = 3'
$Disk = Get-CimInstance Win32_LogicalDisk -Filter 'DriveType = 3' |
    Measure-Object -Property FreeSpace -Minimum -Maximum
$Disk
$Disk = Get-CimInstance Win32_LogicalDisk -Filter 'DriveType = 3' |
    Measure-Object -Property FreeSpace -Minimum -Maximum |
    Select-Object Property, Maximum, Minimum
$Disk = Get-CimInstance Win32_LogicalDisk -Filter 'DriveType = 3' |
    Measure-Object -Property FreeSpace -Minimum -Maximum |
    Select-Object Property, Maximum, Minimum |
    Format-Table -AutoSize
