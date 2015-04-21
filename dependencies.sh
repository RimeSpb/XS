#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y vim
apt-get install -y build-essential
apt-get install -y git
apt-get install -y python
apt-get install -y python-dev
apt-get install -y python-pip
apt-get install -y libjpeg zlib postgresql libmysqlclient
apt-get install -y libjpeg-dev libfreetype6-dev zlib1g-dev
easy_install -U pip
pip install djangocms-installer
pip install Django
pip install --upgrade --force-reinstall pillow
pip install django-registration-redux
pip install Pinax

if ! [ -L /var/www ]; then
      rm -rf /var/www
      ln -fs /vagrant /var/www
fi

