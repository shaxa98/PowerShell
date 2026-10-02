$son = Read-Host "Sonni kiriting"
$son = [int]$son
for ($i = 1; $i -le 10; $i++) {
    $natija = 1
    for ($j = 1; $j -le $i; $j++) {
        $natija *= $son
    }
    Write-Host "$son^$i = $natija"
}

