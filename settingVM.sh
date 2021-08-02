#!/bin/bash

# sudo bash settingVM.sh

sudo apt update && sudo apt dist-upgrade -y &&\
echo 1 >> /home/den/Desktop/report &&\
sudo mkdir -p ~/Documents/volumes/wordpress && sudo mkdir -p ~/Documents/volumes/db &&\
echo 2 >> /home/den/Desktop/report &&\
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y &&\
echo 3 >> /home/den/Desktop/report  &&\
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&\
echo 4 >> /home/den/Desktop/report  &&\
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null &&\
echo 5 >> /home/den/Desktop/report &&\
sudo apt update &&\
echo 6 >> /home/den/Desktop/report &&\
sudo apt install -y make docker-ce docker-ce-cli containerd.io &&\
echo 7 >> /home/den/Desktop/report &&\
sudo usermod -aG docker $USER &&\
echo 8  >> /home/den/Desktop/report &&\
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&\
echo 9 >> /home/den/Desktop/report &&\
sudo chmod +x /usr/local/bin/docker-compose &&\
echo 10 >> /home/den/Desktop/report &&\
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &&\
echo 11 >> /home/den/Desktop/report &&\
git clone https://github.com/DenKrylov/inception_new.git ~/Desktop/inception &&\
echo 12 >> /home/den/Desktop/report &&\
echo "# Host addresses
127.0.0.1  monie.42.fr
127.0.1.1  den-virtualbox
::1        localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters" > /etc/hosts &&\
echo 13 >> /home/den/Desktop/report &&\
sudo snap install code --classic &&
echo 14 >> /home/den/Desktop/report &&\
sudo snap install sftpclient &&
echo 15 >> /home/den/Desktop/report &&\
echo "install all packages" >> /home/den/Desktop/report &&\
reboot