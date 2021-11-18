connect-viserver vcenter -User 'usuario' -Password 'senha' -AllLinked
$meuhost = Get-VMHost -Name "meuhost"
$vmname = "nome da vm"
$datastore = "nome do datastore"
$NetworkName = "nome da rede"
$Template = Get-Template -Name "meu template"
New-VM -Name $vmname -Template -ResourcePool $meuhost -Datastore $datastore -NumCpu 2 -MemoryGB 4 -DiskGB 40 -NetworkName $NetworkName -Floppy -CD -DiskStorageFormat Thin -GuestId winNetDatacenterGuest
