#!/bin/bash

# Menampilkan pesan untuk meminta input
echo "===== Pilih Eksekusi ====="
echo "[1] Commit"
echo "[2] Log"
echo "[3] Push"
echo "[4] Pull"
echo ""

# Menerima input dari pengguna
echo "Input > "
read choose

# Memeriksa apakah bilangan positif, negatif, atau nol
if [ $choose -eq 1  ]; then
    git status
    git add *
    git status
    echo "Message > "
    read message
    git commit -m "$message"
elif [ $choose -eq 2 ]; then
    git log --oneline --graph --pretty=format:'%C(auto)%h%d (%ci) %s'
elif [ $choose -eq 3 ]; then
    git push origin
elif [ $choose -eq 3 ]; then
    git pull origin
else
    echo "Menu Tidak Tersedia."
fi
