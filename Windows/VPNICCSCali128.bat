@echo off & TITLE INSTALAR VPN PARA EQUIPOS ICCS DE CALI EN LA SUBRED 128. & @color 71 & @chcp 1252

echo ------------------------------------------------------
echo ------------------------------------------------------
echo ----- SCRIPT DESARROLLADO POR OMACIAS . --------------
echo ------------------------------------------------------
echo ------------------------------------------------------

echo.
echo Proceso: INICIALIZADO.

set /p HOSTNAME=Digite el nombre del equipo a instalar la VPN:

@psexec \\%HOSTNAME% -s -fc -U $DOMAIN\$USER -p $PASSWORD C:\Users\$USER\Documents\Omacias\Docs\Networking\VPN\ICCS\WG-MVPN-SSL_12_5_3.exe

:: @psexec \\AGCALI004 -s -U $DOMAIN\$USER -p $PASSWORD C:\Users\$USER\Documents\Omacias\Docs\Networking\VPN\ICCS\WG-MVPN-SSL_12_5_3.exe

echo.
echo Proceso: FINALIZADO.

timeout /nobreak 5
