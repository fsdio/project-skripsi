#!/bin/bash

# Menampilkan pesan untuk meminta input
echo "===== Pilih Eksekusi ====="
echo "[1] Push"
echo "[2] Log"
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
    git log --pretty=oneline --abbrev-commit
else
    echo "Menu Tidak Tersedia."
fi
