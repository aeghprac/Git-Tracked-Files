# Navigate to the directory with your files
cd C:\path\to\your\folder

# Use Get-ChildItem to find files with "DC_" at the beginning of their names
# For each file, rename it by replacing "DC_" at the beginning with an empty string
Get-ChildItem -File DC_* | ForEach-Object {
    $newname = $_.Name -replace '^DC_', ''
    Rename-Item -Path $_.FullName -NewName $newname
}
