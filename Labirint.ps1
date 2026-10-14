Clear-Host

$map = @(
"##########",
"#P     # #",
"# ### ## #",
"#   #    #",
"### #### #",
"#      #E#",
"##########"
)

while ($true)
{
    Clear-Host

    foreach ($row in $map)
    {
        Write-Host $row
    }

    $x = 0
    $y = 0

    for ($r = 0; $r -lt $map.Count; $r++)
    {
        $c = $map[$r].IndexOf("P")
        if ($c -ge 0)
        {
            $x = $c
            $y = $r
            break
        }
    }

    $key = (Read-Host "W A S D").ToUpper()

    $newX = $x
    $newY = $y

    switch ($key)
    {
        "W" { $newY-- }
        "S" { $newY++ }
        "A" { $newX-- }
        "D" { $newX++ }
    }

    $target = $map[$newY][$newX]

    if ($target -eq "#")
    {
        continue
    }

    if ($target -eq "E")
    {
        Clear-Host
        Write-Host "🎉 G'ALABA! Labirintdan chiqdingiz!" -ForegroundColor Green
        break
    }

    $line1 = $map[$y].Remove($x,1).Insert($x," ")
    $map[$y] = $line1

    $line2 = $map[$newY].Remove($newX,1).Insert($newX,"P")
    $map[$newY] = $line2
}