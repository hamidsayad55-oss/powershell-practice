# Script: Delete Multiple Folders
# Author: Hamid
# Purpose: Delete testFolder01 to testFolder10 from C:\mytempfolder

# Step 1: Define variables
$intFolders = 10
$intPad = 0
$i = 1
$strPrefix = "testFolder"

# Step 2: Start loop
do {

    # Step 3: If $i is less than 10 → add padding 0
    if ($i -lt 10) {
        $intPad = 0

        # Step 4: Delete folder like testFolder01, 02,...09
        Remove-Item -Path "C:\mytempfolder\$strPrefix$intPad$i" -Force
    }
    else {
        # Step 5: Delete folder like testFolder10
        Remove-Item -Path "C:\mytempfolder\$strPrefix$i" -Force
    }

    # Step 6: Increase counter
    $i++

} until ($i -eq $intFolders + 1)
