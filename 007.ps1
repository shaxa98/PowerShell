write-host "Yoshingizni kiriting"
[int]$yosh = read-host 

if ($yosh -le  6) {
    write-host "siz hali boxchaga borishiz kerak!"
}
elseif (($yosh -ge 7) -and ($yosh -le 18)) {
    $a = $yosh - 6
    write-host  $a "-sinfda o'qishingiz kerak!"
}
else {
    write-host "Siz maktab yoshidan o'tgansiz"
}
