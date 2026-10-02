write-host "Yoshing Nechida? "
[int]$yosh = Read-Host
if ($yosh -lt 7) {
    write-host ("Siz hali maktab yoshiga yetmagansiz!")
} elseif ($yosh -ge 7 -and $yosh -le 17) {
    write-host ("Siz " + ($yosh - 6) + " sinfda o'qiysiz! ")
} else {
    write-host ("Siz maktabni bitirgansiz!")
}