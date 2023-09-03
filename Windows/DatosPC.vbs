dim NIC1, Nic, StrIP, CompName

Set NIC1 = GetObject("winmgmts:").InstancesOf("Win32_NetworkAdapterConfiguration")

For Each Nic in NIC1

if Nic.IPEnabled then

StrIP = Nic.IPAddress(i)

Set WshNetwork = WScript.CreateObject("WScript.Network")

CompName= WshNetwork.Computername
Set wshShell = WScript.CreateObject( "WScript.Shell" )
strUserName = wshShell.ExpandEnvironmentStrings( "%USERNAME%" )
strUserDomain = wshShell.ExpandEnvironmentStrings( "%USERDOMAIN%" )

MsgBox "Usuario: " &strUserName & vbNewLine _
& "Dominio: " &strUserDomain & vbNewLine _
& "Direccion IP: " &StrIP & vbNewLine _
& "Nombre de Equipo: " &CompName,4160,"Datos de tu equipo"

wscript.quit

end if

next

WScript.Echo