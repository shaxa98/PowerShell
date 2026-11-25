Clear-Host
$ErrorActionPreference = "SilentlyContinue"

# Terminal oynasini sozlash
$w = 40; $h = 20
$Host.UI.RawUI.WindowSize = New-Object System.Management.Automation.Host.Size($w+5, $h+5)
$Host.UI.RawUI.BufferSize = New-Object System.Management.Automation.Host.Size($w+5, $h+5)
$Host.UI.RawUI.WindowTitle = "PowerShell Iloncha O'yini"
[cursor]::Visible = $false

# O'yin o'zgaruvchilari
$snake = @((New-Object System.Drawing.Point(10,10)), (New-Object System.Drawing.Point(9,10)), (New-Object System.Drawing.Point(8,10)))
$dx = 1; $dy = 0
$score = 0

# Ovqat generatsiya qilish funksiyasi
function New-Food {
    do {
        $x = Get-Random -Min 1 -Max ($w-1)
        $y = Get-Random -Min 1 -Max ($h-1)
        $found = $false
        foreach($p in $snake) { if($p.X -eq $x -and $p.Y -eq $y) { $found = $true } }
    } while($found)
    return New-Object System.Drawing.Point($x, $y)
}
$food = New-Food

# Ekranni chizish funksiyasi
function Draw-Pixel($x, $y, $char, $color) {
    [Console]::SetCursorPosition($x, $y)
    Write-Host $char -ForegroundColor $color -NoNewline
}

# Maydon chegaralarini chizish
Clear-Host
for($x=0; $x -le $w; $x++) { Draw-Pixel $x 0 "#" "Cyan"; Draw-Pixel $x $h "#" "Cyan" }
for($y=0; $y -le $h; $y++) { Draw-Pixel 0 $y "#" "Cyan"; Draw-Pixel $w $y "#" "Cyan" }

# Asosiy o'yin sikli
$gameOver = $false
while(-not $gameOver) {
    # Ochkoni ko'rsatish
    [Console]::SetCursorPosition(0, $h+2)
    Write-Host "Ochko: $score   " -ForegroundColor Yellow

    # Iloncha va ovqatni chizish
    Draw-Pixel $food.X $food.Y "@" "Red"
    foreach($p in $snake) { Draw-Pixel $p.X $p.Y "O" "Green" }

    # Tezlik (Kutish vaqti millisekundda)
    Start-Sleep -Milliseconds 120

    # Klaviaturani tekshirish
    if ([Console]::KeyAvailable) {
        $key = [Console]::ReadKey($true).Key
        switch ($key) {
            "UpArrow"    { if($dy -eq 0) { $dx = 0; $dy = -1 } }
            "DownArrow"  { if($dy -eq 0) { $dx = 0; $dy = 1 } }
            "LeftArrow"  { if($dx -eq 0) { $dx = -1; $dy = 0 } }
            "RightArrow" { if($dx -eq 0) { $dx = 1; $dy = 0 } }
            "Escape"     { $gameOver = $true }
        }
    }

    # Ilonning oxirgi dumini o'chirish (ekranda iz qolmasligi uchun)
    $tail = $snake[-1]
    Draw-Pixel $tail.X $tail.Y " " "Black"

    # Yangi bosh koordinatasi
    $head = $snake[0]
    $newHead = New-Object System.Drawing.Point(($head.X + $dx), ($head.Y + $dy))

    # Devorga yoki o'ziga urilishni tekshirish
    if ($newHead.X -le 0 -or $newHead.X -ge $w -or $newHead.Y -le 0 -or $newHead.Y -ge $h) { $gameOver = $true }
    foreach($p in $snake) { if($p.X -eq $newHead.X -and $p.Y -eq $newHead.Y) { $gameOver = $true } }

    # Harakatlanish logicasi
    $snake = ,$newHead + $snake
    if ($newHead.X -eq $food.X -and $newHead.Y -eq $food.Y) {
        $score += 10
        $food = New-Food
    } else {
        $snake = $snake[0..($snake.Count-2)]
    }
}

# O'yin tugadi
Clear-Host
[Console]::SetCursorPosition(($w/4), ($h/2))
Write-Host "YUTQAZDINGIZ! JAMI OCHKO: $score" -ForegroundColor Red -BackgroundColor DarkRed
[Console]::SetCursorPosition(0, $h+2)
[cursor]::Visible = $true
