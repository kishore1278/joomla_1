#!/bin/bash

# Navigate to the Joomla installation directory
cd /var/www/html/joomla

# Set appropriate file permissions
chmod -R 755 *
chmod -R 644 .htaccess

# Create a configuration.php file (replace placeholders)
cp installation/configuration.php-dist configuration.php
sed -i 's/root/' configuration.php
sed -i 's/admin123/' configuration.php
sed -i 's/joomla_db/' configuration.php

# Remove the installation directory (if not done during Joomla installation)
rm -rf installation/

# Exit script
exit 0
