#!/bin/bash

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo cd /etc
sudo echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> sudoers  # To tell system to no passward needed 
sudo usermod -a -G root jenkins 
sudo apt update -y
sudo apt install fontconfig openjdk-21-jre -y
sudo java -version
sudo systemctl start jenkins
sudo systemctl enable jenkins