#!/bin/bash
clear;
echo 'selamat datang automate install LEMP';
sudo apt update;
sudo apt upgrade -y;
echo 'telah selesai update';
sleep 4;
echo "install nginx";

if [-d  "/etc/nginx/nginx.conf"]
then
    echo 'nginx sudah ada!!'
    sleep 2;
    exit;
else
    sudo apt install nginx -y;
    systemctl enable nginx ;
    systemctl status nginx;
    echo "nginx sudah di install";
    sleep 5;
fi
