@echo off

pushd %~dp0
ChromeSetup.exe

"Pre Requisitos\Install_Apps_Endesa_PureConnect\\UserApps_64bit\Setup.exe"

CallScripterCTProviders.msi /passive

cacls "C:\ProgramData\Microsoft\Crypto" /E /G Todos:F
cacls "%ProgramFiles(x86)%\Interactive Intelligence\Certificates" /E /G Todos:F

fusioninventory-agent_windows-x64_2.5.2.exe /S /server='https://$IP_ADDRESS/$ORGANIZATION/plugins/fusioninventory/' /add-firewall-exception /execmode=Service /acceptlicense /no-ssl-check /runnow
vpncisco.msi /passive
LibreOffice_6.4.4_Win_x64.msi /passive

"HOSTS.bat - Acceso directo.lnk"

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\svc-csf-cert" /v https /t REG_DWORD /d "00000002" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\svc-csf-cert.$CLIENT-v4.local/client/index.html#/logon?automatic=false" /v https /t REG_DWORD /d "00000002" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\svc-csf.$CLIENT-v4.com/client/api/svc-cic-cert.$CLIENT-v4.local/icws/connection" /v https /t REG_DWORD /d "00000002" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\svc-csf.$CLIENT-v4.local/client/api/svc-cic-cert.$CLIENT-v4.local/icws/connection" /v https /t REG_DWORD /d "00000002" /f

certutil -f -v -addstore -enterprise root CA_$CLIENT.cer
certutil -f -v -addstore -enterprise CA CA_$CLIENT.cer

start "" "%programfiles%"
start "" "%programfiles(x86)%"

ncpa.cpl
