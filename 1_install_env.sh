#1. Update Ubuntu system
sudo apt-get update
#2. Install required packages
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
   
#3. Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#4. Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#5. Update Ubuntu system
sudo apt-get update

#6. Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io

#7. Check Docker version
docker --version

#8. Check Docker status
sudo systemctl status docker

#9. Test Docker run
sudo docker run hello-world
