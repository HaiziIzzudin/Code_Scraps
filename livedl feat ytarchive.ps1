# Program written by Haizi Izzudin
# 3 Main basic function of this program
# 1. Automating URL grabbing from user
# 2. automating folder naming from user
# 3. Automating download and command process.
# Some optional function include:
# A. Installing and updating ytarchive by kethsar

Write-Host "Updating ytarchive...";

if (Test-Path -Path "~\AppData\Local\Microsoft\WindowsApps\ytarchive.exe") {
    Remove-Item ~\AppData\Local\Microsoft\WindowsApps\ytarchive.exe;
}

Write-Host "Downloading latest ytarchive-windows.zip from kethsar/ytarchive github...";
Invoke-WebRequest -Uri https://github.com/Kethsar/ytarchive/releases/download/latest/ytarchive_windows_amd64.zip -OutFile ~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip;

Write-Host "Extracting ytarchive.zip...";
Expand-Archive -LiteralPath "~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip" -DestinationPath "~\AppData\Local\Microsoft\WindowsApps\";

Write-Host "Removing installer file";
Remove-Item ~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip;

Write-Host "Install/update complete!";

Set-Location ~\Videos;

$url = Read-Host -Prompt "Enter in live URL";
$gameName = Read-Host -Prompt "Enter in Game name";

$folderName = ((Get-Date).tostring("yyMMdd")) + " " + $gameName;

# Check if file gameName already available. If not, create one. Then, cd into it.
if ((Test-Path -Path ".\$folderName") -eq $True) {
    Set-Location ".\$folderName";
}
else {
    mkdir ".\$folderName" | Set-Location;
}

Invoke-Expression -Command "ytarchive $url best";