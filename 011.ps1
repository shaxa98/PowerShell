write-host "Yoshingizni kiriting"
[int]$yosh = Read-Host 

if ($yosh -le  6) {
    write-host "siz hali boxchaga borishiz kerak!"
}
elseif (($yosh -ge 7) -and ($yosh -le 18)) {
    $a = [int]($yosh - 6)
    write-host  $a "-sinfda o'qishingiz kerak!"
}
else {
    write-host "Siz maktab yoshidan o'tgansiz"
}