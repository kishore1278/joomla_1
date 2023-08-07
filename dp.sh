#!/bin/bash

# Navigate to the Joomla installation directory
cd /var/www/html/joomla

sudo apt update
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql php-cli php-curl php-gd php-intl php-json php-mbstring php-xml php-zip unzip


# Set appropriate file permissions
chmod -R 755 *
chmod -R 644 .htaccess

sudo mysql_secure_installation -y


CREATE DATABASE joomla_db;
CREATE USER 'root'@'localhost' IDENTIFIED BY '8886083580@Yu';
GRANT ALL PRIVILEGES ON joomla_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
EXIT;

sudo chown -R www-data:www-data joomla

#done