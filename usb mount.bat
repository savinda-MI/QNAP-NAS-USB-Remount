@echo off
setlocal

set /p NASIP=Enter NAS IP Address (e.g., 192.168.1.100): 
set /p NASUSER=Enter NAS Username: 
set /p NASPASS=Enter NAS Password: 

echo.
echo Fetching USB device list from NAS (Device ID + Product Name)...
plink.exe -ssh %NASUSER%@%NASIP% -pw %NASPASS% "bash -c \"for d in /sys/bus/usb/devices/*; do if [ -f \\\"\$d/product\\\" ]; then ID=\$(basename \\\"\$d\\\"); NAME=\$(cat \\\"\$d/product\\\"); echo \$ID - \$NAME; fi; done\""

echo.
set /p USBID=Enter the USB Device ID to replug (e.g., 4-1): 

echo.
echo Unbinding device %USBID%...
plink.exe -ssh %NASUSER%@%NASIP% -pw %NASPASS% "echo %NASPASS% | sudo -S sh -c 'echo %USBID% > /sys/bus/usb/drivers/usb/unbind'"

timeout /t 2 >nul

echo.
echo Binding device %USBID%...
plink.exe -ssh %NASUSER%@%NASIP% -pw %NASPASS% "echo %NASPASS% | sudo -S sh -c 'echo %USBID% > /sys/bus/usb/drivers/usb/bind'"

echo.
echo USB device %USBID% has been re-plugged successfully.
pause
