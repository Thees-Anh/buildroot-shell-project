#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Kernel Version:"
uname -r

echo ""
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME

echo ""
echo "CPU Information:"
lscpu | grep "Model name"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Current Users:"
who
