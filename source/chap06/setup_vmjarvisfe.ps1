#�� ����(IIS) ���� ��ġ
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

#Default.html �����
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Running Jarvis built on Copilot from host $($env:computername) !"
