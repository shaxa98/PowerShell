function EngKattaSon($sonlar) {
    $katta = $sonlar[0]

    foreach ($son in $sonlar) {
        if ($son -gt $katta) {
            $katta = $son
        }
    }

    return $katta
}

$sonlar = @(10, 25, 7, 43, 96, 250)

$natija = EngKattaSon $sonlar

Write-Host "Eng katta son: $natija"