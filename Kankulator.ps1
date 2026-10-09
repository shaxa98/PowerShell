$num1 = [double](Read-Host -Prompt "Birinchi raqamni kiriting")
$op   = Read-Host -Prompt "Amalni kiriting (+, -, *, /)"
$num2 = [double](Read-Host -Prompt "Ikkinchi raqamni kiriting")
if ($op -eq '+') {
    $result = $num1 + $num2}
    elseif ($op -eq '-') 
    {$result = $num1 - $num2}
    elseif ($op -eq '*')
    {$result = $num1 * $num2}
elseif ($op -eq '/')
{ if ($num2 -ne 0)
     { $result = $num1 / $num2} 
     else {$result = "Nolga bo'lish mumkin emas!"}}
     else {$result = "Noma'lum amal!"}
Write-Output "Natija: $result"