#IIS 설치
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

#Default.html 만들기
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Running JARVIS 2.0 Web Service from host $($env:computername) !"
