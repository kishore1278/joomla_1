#!/bin/bash

# Update package repositories
sudo apt update # Use 'yum update' for CentOS/RHEL
sudo apt upgrade

# Install required packages for Joomla
sudo apt install -y apache2 php php-mysql mariadb-server mariadb-client unzip

# Start and enable Apache web server
sudo systemctl start apache2
sudo systemctl enable apache2


