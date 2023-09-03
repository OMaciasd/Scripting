@echo off
COPY \\$IP_ADDRESS\wwwroot\$CLIENT\hosts %windir%\system32\drivers\etc\hosts
pause
EXIT
