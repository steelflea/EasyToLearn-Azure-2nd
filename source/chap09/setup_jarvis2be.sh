#!/bin/bash

# 패키지 소스 업데이트
apt-get -y update

# NGINX 설치
apt-get -y install nginx

# index.html 파일 만들기
echo "Running JARVIS2.0 ENGINE from host $(hostname)" > /var/www/html/index.html