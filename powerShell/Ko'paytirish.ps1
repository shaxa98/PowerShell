write-host("Sonni kiriting")
[int]$raqam = Read-Host
$sanoq = 1 

while ($sanoq -le 10){
 $natija =  $raqam * $sanoq
    Write-Host $raqam "X" $sanoq "="  $natija
        $sanoq++
    }