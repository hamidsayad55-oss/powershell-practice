gcim win32_service
gcim win32_service | sort state
gcim win32_service | sort DisplayName
gcim win32_service | sort DisplayName | select state, DisplayName
gcim win32_service | ? displayname -match 'server'
gcim win32_service | ? name -eq 'bits'
$a = gcim win32_service | ? name -eq 'bits'
$a | gm
$a.state