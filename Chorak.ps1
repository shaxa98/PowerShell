# Write-Host "Sen menga baholaringni yoz va men senga qanday o'qishingi aytib beraman!"
# [int]$OnaTili = Read-Host "Onatili Fanidan nechi baho olding? "
# [int]$Matematika = Read-Host "Matematika Fanidan nechi baho olding? "
# [int] $JismoniyTarbiya = Read-Host "Jismoniy tarbiya Fanidan nechi baho olding? "
  
$hammafan = @("Chizmachilik", "Ona tili", "Matetetika", "Ingiliz tili", "Texnalogiya", "Biologiya", "Tasviriy Sanat", "Huquq", "Musiqa")

For ($i=0; $i -le $hammafan.Length; $i++ ) {
   $baho =  read-host $hammafan[$i] "dan nechi baho olding ?"
   if ($baho -eq 1 ) {
      write-host $hammafan[$i]  $baho "Olgan bo'lsang ishlar chatoq"
   }elseif ($baho -eq 2 ) {
      write-host $hammafan[$i]  $baho "bu yaxshi baho emas yashiroq o'qi! "
   } elseif ($baho -eq 3 ) {
      write-host $hammafan[$i]  $baho "o'rtacha yaxshilab o'qishing kerak! "
   }elseif ($baho -eq 4  ) {
      write-host $hammafan[$i]  $baho "bu ham baho lekin zo'r degani emas! "
   }elseif ($baho -eq 5 ) {
      write-host $hammafan[$i]  $baho "bu ham baho lekin a'lo darajaga chiq! "
   }elseif ($baho -eq 6 ) {
      write-host $hammafan[$i]  $baho " bo'ladi lekin yanada harakat qil! "
   }elseif ($baho -eq 7 ) {
      write-host $hammafan[$i]  $baho " bu 10 dan 3 ball pastda degani! "
   }elseif ($baho -eq 8 ) {
      write-host $hammafan[$i]  $baho " cho'qqiga chiqishinga sal qoldi! "
   }elseif ($baho -eq 9  ) {
      write-host $hammafan[$i]  $baho " yana ozgina harakat qilsang alochi bo'lasan! "
   }elseif ($baho -eq 10 ) {
      write-host $hammafan[$i]  $baho " Zo'r!!!! lekin o'zingdan ketib qolma!  "
   }
   else { 
    write-host "Siz faqat 1 dan 10 gacha son kiritishingiz munkin !!! "
   }
}


