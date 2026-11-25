$number = Get-Random -Minimum 1 -Maximum 100
# write-Output "$number"
do {
    $guess = Read-Host -Prompt "Men o'ylagan raqamni top?"
    if ($guess -lt $number) {
        Write-Output 'Tepaga!'
    } elseif ($guess -gt $number) {
        Write-Output 'Pastga!'
    }
}
#false kelguncha ishlaydi 
while ($guess -ne $number)
{ 
    "Tabriklayman! Siz men o'ylagan raqamini topdingiz!"
 }
 