$son = Read-Host "Sonni kiriting"
$son = [int]$son     
$i = 1
while ($i -le 10) {
    $natija = 1
    $j = 1
    while ($j -le $i) {
        $natija = $natija * $son
        $j++
    }
    Write-Host "$son^$i = $natija"
    $i++
}
