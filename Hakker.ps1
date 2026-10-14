Clear-Host

Write-Host "Haker tizimi ishga tushmoqda..." -ForegroundColor Green
Start-Sleep 2

$foydalanuvchilar = @(
    "admin",
    "director",
    "student",
    "teacher",
    "server"
)

foreach ($user in $foydalanuvchilar)
{
    Write-Host "[$user] akkauntiga ulanish..." -ForegroundColor Yellow
    Start-Sleep 1

    $foiz = Get-Random -Minimum 10 -Maximum 100

    if ($foiz -gt 70)
    {
        Write-Host "✅ Kirish muvaffaqiyatli!" -ForegroundColor Green
    }
    else
    {
        Write-Host "❌ Parol topilmadi!" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Skanerlash yakunlandi!" -ForegroundColor Cyan
Pause