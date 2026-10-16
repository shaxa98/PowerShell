Write-Host "Sen menga baholaringni yoz va men senga qanday o'qishingi aytib beraman!"
[int]$OnaTili = Read-Host "Onatili Fanidan nechi baho olding? "
[int]$Matematika = Read-Host "Matematika Fanidan nechi baho olding? "
[int] $JismoniyTarbiya = Read-Host "Jismoniy tarbiya Fanidan nechi baho olding? "
  

$hammafan = @( $Onatili, $Matematika, $JismoniyTarbiya)

write-host($hammafan[0])

