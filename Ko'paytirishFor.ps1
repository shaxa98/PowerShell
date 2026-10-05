write-host("Sonni kiriting")
[int]$raqam = Read-Host 

for ($sanoq = 1; $sanoq -le 10; $sanoq++){
    $natija =  $raqam * $sanoq
    Write-Host $raqam "X" $sanoq "="  $natija
}