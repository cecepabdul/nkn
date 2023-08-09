# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Menyiapkan lingkungan
RUN apt-get update && \
    apt-get install -y wget sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Membuat direktori, mendownload file, dan memberikan izin
RUN mkdir /root/nkn
WORKDIR /root/nkn
RUN wget -c https://download.npool.io/npool.sh -O npool.sh && \
    chmod +x npool.sh && \
    ./npool.sh Wje6HYE8eHrwoMkI

# Menjalankan perintah
RUN systemctl status npool.service
