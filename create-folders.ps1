$intfolders = 10
$intPad = 0
$i = 1

do {
    $folderName = "Folder" + $i.ToString().PadLeft(2,'0')
    New-Item -ItemType Directory -Name $folderName
    $i++
} while ($i -le $intfolders)
