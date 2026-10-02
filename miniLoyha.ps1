Write-Host "===== KOMPYUTER MA'LUMOTLARI ====="

Write-Host "`nOperatsion sistema:"
Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version

Write-Host "`nCPU:"
Get-CimInstance Win32_Processor |
    Select-Object Name

Write-Host "`nRAM:"
$ram = Get-CimInstance Win32_ComputerSystem
$ramGB = [math]::Round($ram.TotalPhysicalMemory / 1GB, 2)
Write-Host "$ramGB GB"

Write-Host "`nDisk:"
Get-PSDrive -PSProvider FileSystem |
    Select-Object Name,
        @{Name="Used(GB)";Expression={[math]::Round($_.Used / 1GB, 2)}},
        @{Name="Free(GB)";Expression={[math]::Round($_.Free / 1GB, 2)}}

Write-Host "`nTarmoq:"
Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object {$_.IPAddress -ne "127.0.0.1"} |
    Select-Object InterfaceAlias, IPAddress