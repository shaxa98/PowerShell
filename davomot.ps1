$ism = Read-Host "O'quvchi ismini kiriting"
Write-Host "1 - Keldi"
Write-Host "2 - Kelmadi"
Write-Host "3 - Kechikdi"
$holat = Read-Host "Davomatni tanlang"

switch ($holat) {
    "1" {
        $text = "$ism darsga keldi"
        Write-Host $text
        $text >> davomat.txt
    }
    "2" {
        $text = "$ism darsga kelmadi"
        Write-Host $text
        $text >> davomat.txt
    }
    "3" {
        $text = "$ism darsga kechikdi"
        Write-Host $text
        $text >> davomat.txt
    }
    default {
        Write-Host "Noto'g'ri tanlov!"
    }
}