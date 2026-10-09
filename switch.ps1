$ism = Read-Host "O'quvchi ismini kiriting"
Write-Host "1 - Keldi"
Write-Host "2 - Kelmadi"
Write-Host "3 - Kechikdi"
$holat = Read-Host "Davomatni tanlang"
switch ($holat) {
    "1" {
        Write-Host "$ism darsga keldi"
    }
    "2" {
        Write-Host "$ism darsga kelmadi"
    }
    "3" {
        Write-Host "$ism darsga kechikdi"
    }
    default {
        Write-Host "Noto'g'ri tanlov!"
    }
}