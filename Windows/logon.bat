REM "Script conexion unidad de red"
@ECHO ON
echo "Conectando con unidad de red Z ..."
net use Z: \\$IP_ADDRESS\$DEPARTMENT
net use P: \\$DC\$DEPARTMENT
net use Y: \\$DC\$ORGANIZATION\%hostname%
echo "Fin proceso."
@ECHO OFF
