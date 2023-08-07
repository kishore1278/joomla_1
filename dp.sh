#!/bin/bash

# Navigate to the Joomla installation directory
cd /var/www/html/joomla

sudo apt update
sudo apt install apache2 mysql-server php libapache2-mod-php php-mysql php-cli php-curl php-gd php-intl php-json php-mbstring php-xml php-zip unzip


# Set appropriate file permissions
chmod -R 755 *
chmod -R 644 .htaccess



#done