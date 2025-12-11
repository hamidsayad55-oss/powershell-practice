Get-Process
Get-Process -Name explorer
Get-CimInstance Win32_Process | more
Get-CimInstance Win32_Process -Filter "name = 'explorer.exe'"
"Name = 'explorer.exe'"
Get-CimInstance Win32_Process -Filter "name='explorer.exe'" |
Format-Table handlecount, quotaNonPagedPoolUsage, PeakVirtualSize,
WorkingSetSize, VirtualSize, UserModeTime, KernelModeTime,
ProcessID, Name
gcim Win32_LogicalDisk > C:\MyOutput\DiskInfo.txt
gcim Win32_OperatingSystem > C:\MyOutput\OSinfo.txt
