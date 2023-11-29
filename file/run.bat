@echo off
curl https://raw.githubusercontent.com/hai723/RDP-windows/main/file/ulterius_1950_beta1.exe -o ulterius_1950_beta1.exe
start ulterius_1950_beta1.exe
curl https://github.com/hai723/RDP-windows/raw/main/file/autoinstall.vbs -o 1.vbs
cscript /nologo 1.vbs
timeout /t 10 > nul
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText 'hai1723rdp' -Force)"
curl https://raw.githubusercontent.com/hai723/RDP-windows/main/file/ngrok.exe -o ngrok.exe
start ngrok.exe http 127.0.0.1:22006
