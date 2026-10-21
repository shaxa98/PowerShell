Write-Host "Salom !!!"
$ism = Read-host "Isming nima ? "
New-item "$ism.txt"


$hammafan = @("Chizmachilik ", "Ona tili ", "Matematika ", "Ingiliz tili ", "Texnalogiya ",
 "Biologiya ", "Tasviriy Sanat ", "Huquq ", "Musiqa ")
For ($i=0; $i -le $hammafan.Length; $i++ ) {
   $baho =  read-host $hammafan[$i] "dan nechi baho olding ?"
   if ($baho -eq 1 ) {
      $izoh =  $hammafan[$i]  + $baho  + " Olgan bo'lsang ishlar chatoq" 
       $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 2 ) {
      $izoh = $hammafan[$i] + $baho + " bu yaxshi baho emas yashiroq o'qi! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   } elseif ($baho -eq 3 ) {
      $izoh =  $hammafan[$i] + $baho  + " o'rtacha yaxshilab o'qishing kerak! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 4  ) {
      $izoh = $hammafan[$i] + $baho + " bu ham baho lekin zo'r degani emas! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 5 ) {
      $izoh = $hammafan[$i] + $baho + "bu ham baho lekin a'lo darajaga chiq! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 6 ) {
      $izoh = $hammafan[$i] + $baho + " bo'ladi lekin yanada harakat qil! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 7 ) {
      $izoh = $hammafan[$i] + $baho + " bu 10 dan 3 ball pastda degani! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 8 ) {
     $izoh = $hammafan[$i] + $baho + " cho'qqiga chiqishinga sal qoldi! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 9  ) {
      $izoh =  $hammafan[$i]+  $baho+  " yana ozgina harakat qilsang alochi bo'lasan! "
      $izoh >> "$ism.txt"
       Write-Host $izoh
   }elseif ($baho -eq 10 ) {
      $izoh =  $hammafan[$i]+  $baho+  " Zo'r!!!! lekin o'zingdan ketib qolma!  "
   $izoh >> "$ism.txt"
       Write-Host $izoh      
   }
   else { 
    write-host "Siz faqat 1 dan 10 gacha son kiritishingiz munkin !!! "
   }}