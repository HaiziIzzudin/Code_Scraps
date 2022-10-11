Set-Location ~\Downloads\;
Invoke-WebRequest https://download.lenovo.com/consumer/mobiles/fql3047fkvsknnd0.exe -Outfile BluetoothDriver.exe; .\BluetoothDriver.exe;
Invoke-WebRequest https://download.lenovo.com/consumer/mobiles/fql3027f6q9lpnd0.exe -Outfile CameraDriver.exe;    .\CameraDriver.exe;
Invoke-WebRequest https://download.lenovo.com/consumer/mobiles/fql3027fsep5knd0.exe -Outfile AudioDriver.exe;     .\AudioDriver.exe;
