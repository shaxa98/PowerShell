Write-Host "Bugun haftaning qaysi kuni?"
$kun = Read-host
switch ($kun) {
    "dushanba" { Write-Host "Hafta boshlandi" }
    "shanba"   { Write-Host "Dam olish kuni" }
    "yakshanba"{ Write-Host "Dam olish kuni" }
    default    { Write-Host "Oddiy ish kuni" }
}