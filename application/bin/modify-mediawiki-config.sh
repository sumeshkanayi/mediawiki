#!/bin/bash
sed -i "s/MYSQL_USER/$MYSQL_SERVER/g" /var/www/mediawiki-1.39.2/LocalSettings.php
sed -i "s/MYSQL_DB/$MYSQL_DB/g" /var/www/mediawiki-1.39.2/LocalSettings.php
sed -i "s/MYSQL_SERVER/$MYSQL_SERVER/g" /var/www/mediawiki-1.39.2/LocalSettings.php
sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /var/www/mediawiki-1.39.2/LocalSettings.php
