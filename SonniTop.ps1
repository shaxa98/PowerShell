$number = Get-Random -Minimum 1 -Maximum 10

do {
    $guess = Read-Host -Prompt "Men o'ylagan raqamni top?"
    if ($guess -lt $number) {
        Write-Output 'Tepaga!'
    } elseif ($guess -gt $number) {
        Write-Output 'Pastga!'
    }
}

until ($guess -eq $number)
{ 
    "Tabriklayman! Siz men o'ylagan raqamini topdingiz!"
 }