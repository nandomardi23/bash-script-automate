echo "check update";
sudo apt-get update;

echo "insall sesuatu yang dibutuhkan dalam menginstall";
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release;

echo "membuat folder keyrings";
sudo mkdir -m 0755 -p /etc/apt/keyrings;

echo "mendownload docker.gpg";
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg;

echo "pindahkan docker.gpg ke ect/apt/sources.list.d";
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

echo "sesuau yang dibutuhkan";
sudo chmod a+r /etc/apt/keyrings/docker.gpg;
sudo apt-get update;
echo "download installan";
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y;

echo "buat dockernya bisa diakses tanpa sudo";
sudo usermod -aG docker $USER;
newgrp docker;
docker run hello-world;
