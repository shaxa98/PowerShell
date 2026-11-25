Write-Host "===== MACBOOK MA'LUMOTLARI =====" -ForegroundColor Cyan

Write-Host "`n[ OPERATSION SISTEMA ]" -ForegroundColor Yellow
sw_vers

Write-Host "`n[ CPU ]" -ForegroundColor Yellow
sysctl -n machdep.cpu.brand_string

Write-Host "`n[ RAM ]" -ForegroundColor Yellow
system_profiler SPHardwareDataType | Select-String "Memory"

Write-Host "`n[ DISK ]" -ForegroundColor Yellow
df -h /

Write-Host "`n[ TARMОQ ]" -ForegroundColor Yellow
ifconfig | Select-String "inet "