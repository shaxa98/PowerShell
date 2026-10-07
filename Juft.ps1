$i = 1 
while ($i -le 10) {
    
    if ( $i % 2 -eq 0) {
        write-host $i " bu juft son"
    } if ($i % 2 -eq 1) {
        write-host $i " bu toq son"
    }

    $i ++
}


# if ($i % 2 -eq 1) 