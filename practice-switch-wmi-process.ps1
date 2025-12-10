###########################################
# PowerShell Practice Script
# Topics: switch, BoundParameters, Snippets, WMI, Processes
# Author: Hamid (Training)
###########################################

Write-Host "`n=== PART 1: Function + Switch + Bound Parameters ===" -ForegroundColor Cyan

function MyFunction ($param1, $param2)
{
    Write-Host "`nRunning MyFunction..." -ForegroundColor Yellow

    switch ($param1)
    {
        'A' { Write-Host "Value is A" }
        'B' { Write-Host "Value is B" }
        'C' { Write-Host "Value is C" }
        Default { Write-Host "Unknown value: $param1" }
    }

    Write-Host "`nBound Parameters:" -ForegroundColor Green
    $MyInvocation.BoundParameters.Keys

    Write-Host "param1 is $param1"
    Write-Host "param2 is $param2"
}

# TEST the function
MyFunction "A" "TestValue"


###########################################
Write-Host "`n=== PART 2: Creating ISE Snippets ===" -ForegroundColor Cyan
###########################################

Write-Host "`nCreating a snippet called SimpleSwitch..."

New-IseSnippet `
    -Title SimpleSwitch `
    -Description "A simple switch snippet example" `
    -Author "Hamid Training" `
    -Text "Switch (`$value) `r`n{`r`n 'A' { }`r`n 'B' { }`r`n Default { }`r`n}" `
    -CaretOffset 20

Write-Host "`nCurrent Snippets in folder:" -ForegroundColor Green
Get-IseSnippet


###########################################
Write-Host "`n=== PART 3: WMI Practice ===" -ForegroundColor Cyan
###########################################

Write-Host "`nGetting all running processes using WMI..."

$processes = Get-WmiObject -Class win32_process

foreach ($proc in $processes)
{
    Write-Host $proc.Name
}


###########################################
Write-Host "`n=== PART 4: Get-Process Practice ===" -ForegroundColor Cyan
###########################################

Write-Host "`nTesting Get-Process for calc, notepad (may show errors if closed)..."

try {
    Get-Process -Name calc, notepad
}
catch {
    Write-Host "`nProcess not found. Please open calc or notepad first." -ForegroundColor Red
}


###########################################
Write-Host "`n=== END OF TRAINING SCRIPT ===" -ForegroundColor Magenta
###########################################
