#!/bin/bash

echo "===== TASK SCHEDULER ====="

echo "1. Xem Cron Jobs"
echo "2. Xem Time Log"
echo "3. Them Cron Job"

read -p "Choose: " choice

case $choice in

1)
    crontab -l
    ;;

2)
    if [ -f ~/time.log ]
    then
        cat ~/time.log
    else
        echo "No log file"
    fi
    ;;

3)
    (crontab -l ; echo "*/1 * * * * date >> /home/theanh/time.log") | crontab -
    echo "Cron job added"
    ;;

*)
    echo "Invalid choice"
    ;;
esac
