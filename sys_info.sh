#!/bin/bash
echo "===================================="
echo "🖥️  System Info Collector (Linux)"
echo "===================================="

echo "[✔] OS Info:"
cat /etc/os-release
uname -a
echo

echo "[✔] Hostname and Uptime:"
hostname
uptime
echo

echo "[✔] CPU and Memory Info:"
lscpu | grep "Model name"
free -m
echo

echo "[✔] IP and Network Info:"
ip a
ip route
echo

echo "[✔] Disk Usage:"
df -h
