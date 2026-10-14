Clear-Host
Write-Host "=== SON O'YLASH O'YINI ==="
Write-Host "1 dan 100 gacha bir son o'ylang."
Write-Host "Men uni topishga harakat qilaman!"
Read-Host "Tayyor bo'lsangiz Enter bosing"
$min = 1
$max = 100
while ($true)
{   $taxmin = [int](($min + $max) / 2)
    $javob = Read-Host "$taxmin sonini o'yladingizmi? (t=to'g'ri, k=katta, c=kichik)"
    if ($javob -eq "t")
    {Write-Host "Men topdim! "
        break}
    elseif ($javob -eq "k")
    {$min = $taxmin + 1}
    elseif ($javob -eq "c")
    {$max = $taxmin - 1}
    else
    {Write-Host "Faqat t, k yoki c kiriting!"}
}