# REMOÇÃO DE SNAPSHOT

$vms = get-content servers.txt
Connect-VIServer "informar o vcenter" -User $env:username -Password $env:password -force

foreach ($vm in $vms){
    Get-VM -Name $vm |Get-Snapshot |  Where-Object{$_.Created -lt(Get-date).AddDays(-3)} | Remove-Snapshot -Confirm:$false
    
}
