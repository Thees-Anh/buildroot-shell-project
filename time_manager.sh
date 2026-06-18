#!/bin/bash

echo "===== TIME MANAGER ====="

echo "1. Xem thoi gian"
echo "2. Xem timezone"

read -p "Choose: " choice

case $choice in

1)
    date
    ;;

2)
    timedatectl
    ;;

*)
    echo "Invalid choice"
    ;;
esac
