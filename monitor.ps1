Clear-Host
$ErrorActionPreference = "SilentlyContinue"

# Mac terminalida kursor ko'rinmasligini ta'minlash
if ($System.Runtime.InteropServices.RuntimeInformation::IsOSPlatform([System.Runtime.InteropServices.OSPlatform]::Windows)) {
    [Console]::CursorVisible = $false
}

try {
    while ($true) {
        # Terminal oynasini tozalash (miltillashni kamaytirish uchun tepaga qaytish)
        [Console]::SetCursorPosition(0, 0)
        
        # Vaqt va sana ma'lumotlarini olish
        $hozir = Get-Date
        $vaqt = $hozir.ToString("HH:mm:ss")
        $sana = $hozir.ToString("dd MMMM yyyy, dddd")
        
        # Mac tizimining qachon yoqilganini aniqlash (Uptime)
        $uptimeStr = "Aniqlab bo'lmadi"
        if (Get-Command uptime -ErrorAction SilentlyContinue) {
            $uptimeStr = (uptime).Trim()
        }

        # Vizual interfeysni chizish
        Write-Host "`n====================================================" -ForegroundColor Cyan
        Write-Host "   📊  MAC TIZIM MONITORI VA SEHRLI SOAT  📊" -ForegroundColor Magenta
        Write-Host "====================================================" -ForegroundColor Cyan
        
        Write-Host "`n  [ BUGUNGI SANA ]" -ForegroundColor Gray
        Write-Host "  👉 $sana" -ForegroundColor Yellow
        
        Write-Host "`n  [ REAL VAQT ]" -ForegroundColor Gray
        Write-Host "  ⏰  $vaqt  " -ForegroundColor White -BackgroundColor DarkCyan
        
        Write-Host "`n  [ MAC TIZIM HOLATI (UPTIME) ]" -ForegroundColor Gray
        Write-Host "  💻 $uptimeStr" -ForegroundColor Green
        
        Write-Host "`n====================================================" -ForegroundColor Cyan
        Write-Host "  Dasturdan chiqish uchun [ Ctrl + C ] ni bosing..." -ForegroundColor DarkGray

        # Har 1 soniyada yangilab turish
        Start-Sleep -Seconds 1
    }
}
finally {
    # Dastur to'xtaganda terminalni tozalash
    Clear-Host
    if ($System.Runtime.InteropServices.RuntimeInformation::IsOSPlatform([System.Runtime.InteropServices.OSPlatform]::Windows)) {
        [Console]::CursorVisible = $true
    }
}

