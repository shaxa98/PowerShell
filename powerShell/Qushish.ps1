
Write-Host "Nechiga Nechini qo'shib beray?"
[int]$a = Read-Host
Write-Host "  + "
[int]$b = Read-Host

function Qushish {
    param($a, $b)
    Write-Host "  = "
    return $a + $b
}

Qushish  $a $b