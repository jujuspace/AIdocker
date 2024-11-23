#1. 우분투 시스템 업데이트
sudo apt-get update
#2. 필수 패키지 설치
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
   
#3. Docker GPG키 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#4. Docker저장소 추가
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#5. 우분투 시스템 업데이트
sudo apt-get update

#6. Docker 설치
sudo apt-get install docker-ce docker-ce-cli containerd.io

#7. Docker 버전 확인
docker --version
