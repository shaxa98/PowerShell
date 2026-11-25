$ism = read-host "Ismingizni kiriting"
if ("Amir" -eq "$ism" -or "Islom" -eq "$ism" -or "Ulug'bek" -eq "$ism" ) {
    write-host "True"
} 
else {
    write-host "False"
}
