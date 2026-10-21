Write-host "1 ==> Tosh ! "
Write-host "2 ==> Qaychi ! "
Write-host "3 ==> Qog'oz ! "
 
for ($i = 0; $i -lt 10; $i++) {
$raqam1 = Read-host " Tosh Qaychi Qog'oz. bittasini tanlag!!!"
$raqam = Get-Random -Minimum 1 -Maximum 3
switch ($raqam) {
    1  { "Tosh"  }
    2 { "Qaychi"}
    3 {"Qog'oz"}
}
if ( $raqam1 -eq $raqam){ 
    write-host "tabriklatman yutding!!!"
}elseIf ( $raqam1 -ne  $raqam){ 
    write-host "Afsus Yutqazding!!!"
} elseif ($raqam1 -gt 3) { 
    write-host " faqat 1-3 gacha son kititish kerak"
}
}
switch ($raqam) {
    1  { "Tosh"  }
    2 { "Qaychi"}
    3 {"Qog'oz"}
}
if ( $raqam1 -eq $raqam){ 
    write-host "tabriklatman yutding!!!"
}elseIf ( $raqam1 -ne  $raqam){ 
    write-host "Afsus Yutqazding!!!"
} elseif ($raqam1 -gt 3) { 
    write-host " faqat 1-3 gacha son kititish kerak"
}