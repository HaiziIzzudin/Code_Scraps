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

# Check if file gameName already available. If not, create one. Then, cd into it.
if ((Test-Path -Path ".\$fullFolderName") -eq $True) {
    Set-Location ".\$fullFolderName";
}
else {
    mkdir ".\$fullFolderName" | Set-Location;
}

Invoke-Expression -Command "ytarchive $url best";