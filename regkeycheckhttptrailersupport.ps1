if ( Test-Path -Path "HKLM:\System\CurrentControlSet\Services\HTTP\Parameters" )

{

	Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\HTTP\Parameters"

}

else

{

	Write-Host "Key HKLM:\System\CurrentControlSet\Services\HTTP\Parameters doesn't exist "

}

