#!/bin/bash

echo "===== FILE MANAGER ====="
echo "1. Tao file"
echo "2. Xoa file"
echo "3. Sao chep file"
echo "4. Di chuyen file"
echo "5. Liet ke file"
echo "6. Tim file"

read -p "Choose: " choice

case $choice in

1)
    read -p "Nhap ten file: " file
    touch "$file"
    echo "Da tao file"
    ;;

2)
    read -p "Nhap ten file: " file
    rm -f "$file"
    echo "Da xoa file"
    ;;

3)
    read -p "File nguon: " src
    read -p "File dich: " dst
    cp "$src" "$dst"
    echo "Da sao chep"
    ;;

4)
    read -p "File nguon: " src
    read -p "Vi tri moi: " dst
    mv "$src" "$dst"
    echo "Da di chuyen"
    ;;

5)
    ls -lh
    ;;

6)
    read -p "Nhap ten file can tim: " file
    find . -name "$file"
    ;;

*)
    echo "Lua chon khong hop le"
    ;;
esac
