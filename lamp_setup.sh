#!/bin/bash

echo "-----------------------------------------------------"
echo "STEP 1: Updating System Packages"
echo "-----------------------------------------------------"
sudo apt update -y && sudo apt upgrade -y
echo "System packages updated successfully."
echo ""

echo "-----------------------------------------------------"
echo "STEP 2: Installing Apache Web Server"
echo "-----------------------------------------------------"
sudo apt install apache2 -y
echo "Apache installed. Checking status..."
sudo systemctl status apache2 --no-pager
echo "You can now check Apache in browser using server IP."
echo ""

echo "-----------------------------------------------------"
echo "STEP 3: Installing MySQL Database Server"
echo "-----------------------------------------------------"
sudo apt install mysql-server -y
echo "MySQL installed. Running secure installation..."
sudo mysql_secure_installation
echo "MySQL setup completed."
echo ""

echo "-----------------------------------------------------"
echo "STEP 4: Installing PHP and Required Modules"
echo "-----------------------------------------------------"
sudo apt install php libapache2-mod-php php-mysql -y
echo "PHP installed successfully."
php -v
echo ""

echo "-----------------------------------------------------"
echo "STEP 5: Testing PHP with Apache"
echo "-----------------------------------------------------"
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/phpinfo.php
echo "PHP info file created. You can check it in browser at:"
echo "http://<your-server-ip>/phpinfo.php"
echo ""

echo "-----------------------------------------------------"
echo "STEP 6: Restarting Apache to Apply Changes"
echo "-----------------------------------------------------"
sudo systemctl restart apache2
echo "Apache restarted successfully."
echo ""

echo "-----------------------------------------------------"
echo "LAMP Stack Setup Completed!"
echo "-----------------------------------------------------"
echo "Apache: http://<your-server-ip>/"
echo "PHP Info: http://<your-server-ip>/phpinfo.php"
echo "MySQL: mysql -u root -p"
