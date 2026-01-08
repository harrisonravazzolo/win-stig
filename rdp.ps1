# Enable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0

# Allow RDP through Windows Firewall
New-NetFirewallRule -DisplayName "RDP" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 3389 -Enabled True

Write-Output "Remote Desktop enabled. Please restart your computer."