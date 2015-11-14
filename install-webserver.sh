#!/bin/bash
sudo apt-get update && sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl
cd /var/www/html
sudo git clone https://github.com/Nandini-ITM544/MP2_Application_Setup.git
sudo mv -v MP2_Application_Setup/* /var/www/html
sudo rm -rf /var/www/html/MP2_Application_Setup
cd /home/controller
sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php
sudo mv vendor /var/www/html 
PW=letmein
export PW
