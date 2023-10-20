#!/bin/bash
#wget설치
sudo apt install wget

#디스크 파티션 유틸리티 다운로드 및 실행 권한 변경
wget https://raw.githubusercontent.com/steelflea/EasyToLearn-Azure-Portal/main/Chapter10/setup_vm_disks.sh
sudo chmod 755 setup_vm_disks.sh
sudo ./setup_vm_disks.sh

#샘플 파일 readme.txt 만들기
cd /datadisks/disk1/
sudo touch readme.txt

# 패키지 소스 업데이트
apt-get -y update

# NGINX 설치
apt-get -y install nginx

# index.html 파일 만들기
echo "Running FRIDAY ENGINE from host $(hostname)" > /var/www/html/index.html
