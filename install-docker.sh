#!/bin/bash

sudo apt-get update
sudo apt-get install
    \ ca-certificates
    \ curl
    \ gnupg
    \ lsb-release;

echo "instalation depend success";

sudo mkdir -p /etc/apt/keyrings;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg;

echo "download docker key suceess";

 echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

  sudo apt-get update;

  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y ;

  sudo groupadd docker;
  sudo usermod -aG docker $USER;
  newgrp docker;
  docker run hello-world;
