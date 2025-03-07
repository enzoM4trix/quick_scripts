#get info about datadog into var
$ToUninstall = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Datadog Agent"}

#uninstall program
$ToUninstall.uninstall()