#Setup Data Disk
#Get-Disk | Where-Object IsOffline -EQ $true | Set-Disk -IsOffline $false
Get-Disk | Where-Object PartitionStyle -EQ 'RAW' | Initialize-Disk
New-Partition -DiskNumber 2 -UseMaximumSize -DriveLetter X
Format-Volume -DriveLetter X -FileSystem NTFS -NewFileSystemLabel webdata -Confirm:$false

#Setup IIS
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

#Create Default.html
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Running FRIDAY Web Service from host $($env:computername) !"
