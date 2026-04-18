#!/bin/bash

echo "===== SYSTEM HEALTH REPORT ====="
echo "Date: $(date)"
echo ""
echo "CPU Load: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2}')%"
echo "Memory Usage: $(free -m | awk 'NR==2{printf "%s/%s MB (%.2f%%)", $3,$2,$3*100/$2}')"
echo "Disk Usage: $(df -h / | awk 'NR==2{print $5}')"
echo "Uptime: $(uptime -p)"
echo "================================"
