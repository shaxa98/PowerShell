$number = Get-Random -Minimum 1 -Maximum 100
for ($guess = 0; $guess -ne $number; ) {
    $guess = [int](Read-Host -Prompt "Men o'ylagan raqamni top?")
    "Tepaga!" * ($guess -lt $number)
    "Pastga!" * ($guess -gt $number)
}
"Tabriklayman! Siz men o'ylagan raqamni topdingiz!"