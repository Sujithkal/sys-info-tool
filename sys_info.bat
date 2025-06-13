@echo off
echo ====================================
echo 🖥️  System Info Collector (Windows)
echo ====================================

echo [✔] OS & Build Version:
ver
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"

echo.

echo [✔] Hostname and Uptime:
hostname
net stats workstation | find "Statistics since"

echo.

echo [✔] CPU and Memory Info:
wmic cpu get name
wmic computersystem get TotalPhysicalMemory

echo.

echo [✔] IP Configuration:
ipconfig /all

echo.

echo [✔] Disk Usage:
wmic logicaldisk get size,freespace,caption
