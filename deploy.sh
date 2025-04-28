#!/bin/bash

# 1. Remove default nginx page (if exists)
sudo rm -f /var/www/html/index.nginx-debian.html

# 2. Download your updated weather app code from GitHub
wget -O /tmp/weather.zip https://github.com/muhammadsohaib56/weather-forecast-web/archive/refs/heads/main.zip

# 3. Unzip the downloaded code
unzip -o /tmp/weather.zip -d /tmp/

# 4. Copy your app files into the Nginx root directory
sudo cp -r /tmp/weather-forecast-web-main/* /var/www/html/

# 5. Set correct permissions for the web server
sudo chown -R www-data:www-data /var/www/html

# 6. Reload nginx to apply changes
sudo systemctl reload nginx
