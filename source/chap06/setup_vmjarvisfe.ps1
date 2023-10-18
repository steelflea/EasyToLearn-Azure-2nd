#웹 서버(IIS) 역할 설치
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

#Default.html 만들기
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Running Jarvis built on Copilot from host $($env:computername) !"
