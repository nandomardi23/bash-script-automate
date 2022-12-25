#!/bin/bash
clear;
echo 'selamat datang automate install LEMP';
sudo apt update;
sudo apt upgrade -y;
echo 'telah selesai update';

echo "install nginx";
var=$(ls /etc/nginx/)
if [$var == true]
then
echo 'nginx sudah ada!!'
sleep 2;
else
sudo apt install nginx -y;
systemctl enable nginx ;
systemctl status nginx;
echo "nginx sudah di install";
sleep 5;
