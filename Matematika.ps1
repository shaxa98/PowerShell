Clear-Host

$ball = 0

Write-Host "=== MATEMATIKA TESTI ==="
Write-Host ""

for ($i = 1; $i -le 5; $i++){
    $a = Get-Random -Minimum 100 -Maximum 300
    $b = Get-Random -Minimum 10 -Maximum 100

    $togriJavob = $a - $b

    $javob = Read-Host "$i-savol: $a - $b = ?"

    if ([int]$javob -eq $togriJavob){
        Write-Host "Togri!"
        $ball++}
    else{Write-Host "Notogri! Javob: $togriJavob"}

    Write-Host ""}

Write-Host "Test tugadi!"   
Write-Host "Natija: $ball / 5"