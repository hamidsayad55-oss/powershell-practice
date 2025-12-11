# Step 1–4: Create variables
$intFolders = 10
$intPad
$i = 1

# Step 5: Create constant variable strPrefix
New-Variable -Name strPrefix -Value "testFolder" -Option Constant

# Step 6: Begin Do...Until loop
do {

    # Step 7: If $i is less than 10
    if ($i -lt 10)
    {
        # Step 8: Add padding 0 for folder names 01, 02, ..., 09
        $intPad = 0

        # Step 9: Create folder like testFolder01, testFolder02...
        New-Item -Path "C:\mytempfolder" -Name "$strPrefix$intPad$i" -Type Directory
    }
    else
    {
        # Step 11: Create folder without padding for 10 → testFolder10
        New-Item -Path "C:\mytempfolder" -Name "$strPrefix$i" -Type Directory
    }

    # Step 12: Increase counter
    $i++

# Step 13: Stop when i = $intFolders + 1
} until ($i -eq $intFolders + 1)
