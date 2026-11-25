write-host "Loginni kiriting"
$login = Read-Host
if ($login -eq "admin"){
    write-host "parolni kiriting"
    $parol = Read-Host
    if ($parol -eq "admin123"){
        write-host "tabriklayman xush kelibsiz"
    }
    else {
        write-host "parol xato"
    }
}
else {
    write-host "login xato"
}

