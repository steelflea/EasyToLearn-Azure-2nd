#!/bin/bash

# ��Ű�� �ҽ� ������Ʈ
apt-get -y update

# NGINX ��ġ
apt-get -y install nginx

# index.html ���� �����
echo "Running JARVIS2.0 ENGINE from host $(hostname)" > /var/www/html/index.html