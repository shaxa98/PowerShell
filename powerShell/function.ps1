# function Salom {
#     Write-Host "Assalomu alaykum!"
# }

function Salom {
    param($ism)

    Write-Host "Salom, $ism!"
}


 function Qushish {
    param($a, $b)
    return $a + $b
}
function Ayirish {
    param($a, $b)
    return $a - $b
}
function kupaytirish {
    param($a, $b)
    return $a * $b
}
function Bulish {
    param($a, $b)

    return $a / $b
}
Qushish 23 89
Ayirish  900 564
kupaytirish 45 34
Bulish 560 75
