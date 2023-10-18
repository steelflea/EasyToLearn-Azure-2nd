#!/bin/bash
# NGINX 설치
sudo apt-get update
sudo apt-get -y install nginx

# index.html 파일 만들기
sudo sh -c 'echo "Running Jarvis Foundation Models from host $(hostname)" > /var/www/html/index.html'
