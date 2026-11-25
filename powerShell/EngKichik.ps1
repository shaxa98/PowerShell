function EngKichikSon($sonlar) {
    $kichik = $sonlar[0]

    foreach ($son in $sonlar) {
        if ($son -lt $kichik) {
            $kichik = $son
        }
    }

    return $kichik 
}

$sonlar = @(10, 25, 7, 43, 96, 250)

$natija = EngKichikSon $sonlar

Write-Host "Eng Kichik son: $natija"