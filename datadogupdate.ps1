#change here api kay and site (if needed)
$apikey = ""
$site = "datadoghq.com"

# Source URL
$url = "https://s3.amazonaws.com/ddagent-windows-stable/datadog-agent-7-latest.amd64.msi"

# Destation file
$dest = "c:\temp\ddog\datadog-latest-installer.msi"

# create directories

New-Item -Path c:\temp\ddog -ItemType directory

# Download the file
Invoke-WebRequest -Uri $url -OutFile $dest

#enter to directory
Set-Location -Path c:\temp\ddog

Start-Process -Wait msiexec -ArgumentList '/qn /i datadog-latest-installer.msi APIKEY="$apikey" SITE="$site"'

Remove-Item 'datadog-latest-installer.msi'

