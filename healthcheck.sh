#!/bin/bash

# ==========================================
# EC2 Health Check Script
# ProLEAP Academy Assignment
# Author: Bibhu Prasad Panigrahy
# ==========================================

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
REPORT="reports/health-report-$TIMESTAMP.txt"

{
echo "========================================="
echo "        EC2 HEALTH CHECK REPORT"
echo "========================================="
echo

echo "Current Date & Time:"
date
echo

echo "Hostname:"
hostname
echo

echo "Logged-in User:"
whoami
echo

echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME
echo

echo "Kernel Version:"
uname -r
echo

echo "System Uptime:"
uptime
echo

echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'
echo

echo "Memory Utilization:"
free -h
echo

echo "Disk Utilization:"
df -h
echo

echo "IP Address:"
hostname -I
echo

echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo

echo "Running Services Count:"
systemctl list-units --type=service --state=running | wc -l
echo

echo "Failed Systemd Services:"
systemctl --failed
echo

echo "Listening Ports:"
ss -tuln
echo

echo "========================================="
echo "Report Generated Successfully"
echo "========================================="

} | tee "$REPORT"

echo
echo "Health report saved as:"
echo "$REPORT"
