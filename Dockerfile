# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Menyalin skrip startup ke dalam kontainer
COPY startup.sh /root/nkn/startup.sh

# Memberikan izin eksekusi pada skrip
RUN chmod +x /root/nkn/startup.sh

# Menjalankan skrip saat kontainer berjalan
CMD ["/root/nkn/startup.sh"]
