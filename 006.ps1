$login = ""
$parol = ""

while (($login -ne "admin") -or ($parol -ne "1234")) {
    $login = Read-Host "Loginni kiriting"
    $parol = Read-Host "Parolni kiriting"

    if (($login -ne "admin") -or ($parol -ne "1234")) {
        Write-Host "Login yoki parol xato. Qayta urinib ko'ring."
    }
}

Write-Host "Tizimga muvaffaqiyatli kirdingiz!"