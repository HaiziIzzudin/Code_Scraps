# Program written by Haizi Izzudin
# 3 Main basic function of this program
# 1. Automating URL grabbing from user
# 2. automating folder naming from user
# 3. Automating download and command process.
# Some optional function include:
# A. Installing and updating ytarchive by kethsar
# B. Compilation code on the fly by downloading the code, and compile to executable

Clear-Host; Set-Location ~\Videos;

$url = Read-Host -Prompt "Enter in live URL";
$gameName = Read-Host -Prompt "Enter in Game name";

$folderName = ((Get-Date).tostring("yyMMdd")) + " " + $gameName;

if ((Test-Path -Path ".\Videos\$fullFolderName") -eq $True) {
    Set-Location ".\Videos\$fullFolderName";
}
else {
    mkdir ".\Videos\$fullFolderName" | Set-Location;
}
