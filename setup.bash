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

# Memeriksa apakah input berupa angka
if ! [[ "$choose" =~ ^[1-4]$ ]]; then
    echo "Input tidak valid."
    exit 1
fi

# Menjalankan operasi yang sesuai berdasarkan input
if [ "$choose" -eq 1 ]; then
    git status
    git add *
    git status

    git config --global user.email "klikrahmatsunjani@gmail.com"
    git config --global user.name "Rahmat Sunjani"
    read -r -p "Message > " message
    git commit -m "$message"
elif [ "$choose" -eq 2 ]; then
    git log --oneline --graph --pretty=format:'%C(auto)%h%d (%ci) %s'
fi