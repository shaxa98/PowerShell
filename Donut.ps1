Clear-Host
[Console]::CursorVisible = $false

# Foydalanuvchidan matn so'rash
$text = Read-Host "Terminalda ko'rinadigan so'zni kiriting (masalan: Shaxzod)"
if (-not $text) { $text = "HELLO" }

$width = [Console]::WindowWidth
$height = [Console]::WindowHeight

# Matnni o'rtaga joylashtirish koordinatalari
$startX = [Math]::Max(0, [int](($width - $text.Length) / 2))
$startY = [Math]::Max(0, [int]($height / 2))

try {
    while ($true) {
        # Har safar tasodifiy nuqtalarda matritsa yomg'irini chizish
        for ($i = 0; $i -lt 15; $i++) {
            $rx = Get-Random -Minimum 0 -Maximum $width
            $ry = Get-Random -Minimum 0 -Maximum $height
            
            # Agar bu nuqta matn turgan joyga to'g'ri kelmasa, yashil belgi qo'yish
            if ($ry -ne $startY -or $rx -lt $startX -or $rx -ge ($startX + $text.Length)) {
                [Console]::SetCursorPosition($rx, $ry)
                $char = [char](Get-Random -Minimum 33 -Maximum 126)
                Write-Host $char -ForegroundColor Green -NoNewline
            }
        }

        # Asosiy matnni terminal o'rtasida yorqin rangda saqlab turish
        [Console]::SetCursorPosition($startX, $startY)
        Write-Host $text -ForegroundColor White -BackgroundColor DarkGreen -NoNewline

        # Tasodifiy eski belgilarni o'chirish (tozalash effekti)
        for ($i = 0; $i -lt 12; $i++) {
            $cx = Get-Random -Minimum 0 -Maximum $width
            $cy = Get-Random -Minimum 0 -Maximum $height
            if ($cy -ne $startY -or $cx -lt $startX -or $cx -ge ($startX + $text.Length)) {
                [Console]::SetCursorPosition($cx, $cy)
                Write-Host " " -NoNewline
            }
        }

        Start-Sleep -Milliseconds 30
    }
}
finally {
    [Console]::CursorVisible = $true
    Clear-Host
}
