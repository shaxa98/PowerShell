write-host "logini kiriting:"
$login = read-host 
$user = "admin"
$parol = "12345"

if ($login -eq $user) {
    write-host "Login to'g'ri parolni kiriting"
    $passwor = read-host
    if ($passwor -eq $parol) {
    write-host "Parol to'g'ri Tabriklayman"
} else {
    write-host "Parol Xato qayta urunib ko'ring"
}
} else {
    write-host "Login Xato qayta urunib ko'ring"
}