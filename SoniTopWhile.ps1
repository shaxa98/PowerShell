$number = Get-Random -Minimum 1 -Maximum 10
$guess = 0
while ($guess -ne $number) {
    $guess = Read-Host "Men o'ylagan raqamni top?"
    if ($guess -lt $number) {
        Write-Output "Tepaga!"
    }
    elseif ($guess -gt $number) {
        Write-Output "Pastga!"
    }
}
Write-Output "Tabriklayman! Siz men o'ylagan raqamni topdingiz!"