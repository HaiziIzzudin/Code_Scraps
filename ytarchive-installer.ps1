Write-Host "Removing old ytarchive executable...";
if (Test-Path -Path "~\AppData\Local\Microsoft\WindowsApps\ytarchive.exe") {
    Remove-Item ~\AppData\Local\Microsoft\WindowsApps\ytarchive.exe;
}

Write-Host "Downloading latest ytarchive-windows.zip from kethsar/ytarchive github...";
Invoke-WebRequest -Uri https://github.com/Kethsar/ytarchive/releases/download/latest/ytarchive_windows_amd64.zip -OutFile ~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip;

Write-Host "Extracting ytarchive.zip...";
Expand-Archive -LiteralPath "~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip" -DestinationPath "~\AppData\Local\Microsoft\WindowsApps\";

Write-Host "Removing ytarchive.zip...";
Remove-Item ~\AppData\Local\Microsoft\WindowsApps\ytarchive.zip;

Write-Host "Installation done! Use by directly typing 'ytarchive'";