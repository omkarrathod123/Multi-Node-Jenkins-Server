# Multi-Node-Jenkins-Server
use following command in main jenkins server:
<bash>
sudo cd /etc
sudo echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> sudoers  # To tell system to no passward needed 
sudo usermod -a -G root jenkins
</bash>