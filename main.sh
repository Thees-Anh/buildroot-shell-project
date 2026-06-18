#!/bin/bash

while true
do
    clear

    echo "===== SYSTEM MANAGEMENT TOOL ====="
    echo "1. File Manager"
    echo "2. Scheduler"
    echo "3. Time Manager"
    echo "4. System Info"
    echo "5. Install Package"
    echo "0. Exit"

    read -p "Choose: " choice

    case $choice in

    1)
        ./file_manager.sh
        ;;

    2)
        ./scheduler.sh
        ;;

    3)
	./time_manager.sh
	;;

    4)
        ./system_info.sh
        ;;

    5)
        ./install.sh
        ;;

    0)
        echo "Goodbye!"
        exit
        ;;

    *)
        echo "Invalid choice!"
        ;;
    esac

    read -p "Press Enter to continue..."
done
