#!/bin/bash
#
#
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM=$(free | grep Mem| awk '{print / *100}')
DISK=$(df | grep /root | awk '{print $5}')
UPTIME=$(uptime -p | sed 's/up //')

echo "=======System Health========"
echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk usage: $DISK"
echo "Uptime: $UPTIME%"

