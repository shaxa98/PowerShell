$parol = ""

while ($parol -ne "1234") {
    $parol = Read-Host "Parolni kiriting"
}

Write-Host "Kirish muvaffaqiyatli!"