


$RDPpath = "HKLM:\System\CurrentControlSet\Control\Terminal Server"
write-host "Enabling Remote Desktop"
$RDPstatus = Get-ItemProperty -Path $RDPpath -Name "fDenyTSConnections"

if ($RDPstatus.fDenyTSConnections -eq [int]0) {
    Write-Host "Remote desktop is alread installed" 
}

else{
    Set-ItemProperty -Path $RDPpath -name "fDenyTSConnections" -value 0
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
}
