Clear-Host
$Host.UI.RawUI.WindowTitle = "Xavfsiz Parol Generatori"

# Sarlavha
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "        XAVFSIZ PAROL GENERATORI             " -ForegroundColor Magenta
Write-Host "=============================================" -ForegroundColor Cyan

# Foydalanuvchidan parametrlarni so'rash
[int]$uzunlik = Read-Host "Parol uzunligini kiriting (masalan: 12)"
if ($uzunlik -le 0) { $uzunlik = 12 }

$kattaHarf   = (Read-Host "Katta harflar bo'lsinmi? (y/n)").ToLower()
$kichikHarf  = (Read-Host "Kichik harflar bo'lsinmi? (y/n)").ToLower()
$raqamlar    = (Read-Host "Raqamlar bo'lsinmi? (y/n)").ToLower()
$belgilar    = (Read-Host "Maxsus belgilar bo'lsinmi? (y/n)").ToLower()

# Belgilar bazasini xavfsiz massiv ko'rinishida shakllantirish
$baza = @()
if ($kattaHarf -eq 'y' -or $kattaHarf -eq '')   { $baza += "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray() }
if ($kichikHarf -eq 'y' -or $kichikHarf -eq '') { $baza += "abcdefghijklmnopqrstuvwxyz".ToCharArray() }
if ($raqamlar -eq 'y' -or $raqamlar -eq '')     { $baza += "0123456789".ToCharArray() }
if ($belgilar -eq 'y' -or $belgilar -eq '')     { $baza += "!@#$%^*()_+-=[]{}|;:,.<>?".ToCharArray() }

# Agar foydalanuvchi hamma narsani rad etsa
if ($baza.Count -eq 0) {
    Write-Host "`n Hech qanday belgi turi tanlanmadi! Standart parol yaratiladi." -ForegroundColor Red
    $baza = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^*".ToCharArray()
}

# Parol generatsiya qilish
$parol = ""
for ($i = 0; $i -lt $uzunlik; $i++) {
    $index = Get-Random -Minimum 0 -Maximum $baza.Count
    $parol += $baza[$index]
}

# Parolni klaviatura xotirasiga nusxalash (Clipboard)
$parol | Set-Clipboard

# Natijani ko'rsatish
Write-Host "`n=============================================" -ForegroundColor Cyan
Write-Host " Yangi xavfsiz parolingiz tayyor:" -ForegroundColor Yellow
Write-Host " $parol " -ForegroundColor Green -BackgroundColor DarkGreen
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host " Parol avtomat ravishda nusxalandi (Ctrl+V)!" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

# Chiqish
Write-Host "`nYopish uchun ixtiyoriy tugmani bosing..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
