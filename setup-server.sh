#!/bin/bash
clear;
echo 'selamat datang automate install LEMP';
sudo apt update;
sudo apt upgrade -y;
echo 'telah selesai update';

echo "install nginx";
sudo apt install nginx -y;
systemctl enable nginx ;
systemctl status nginx;
q;
echo "nginx sudah di install";
