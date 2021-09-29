# CRIANDO SNAPSHOT
$vms = Get-Content servers.txt
$date = Get-Date -Format "ddMMyyyy"
Connect-VIServer "informar o vcenter" -User $env:username -Password $env:password -force
foreach ($vm in $vms) {
    New-Snapshot -vm $vm -name "$vm $date"
}
