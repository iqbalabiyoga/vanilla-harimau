$ sudo apt install apache2
$ sudo apt install mysql-server
$ sudo apt install php
$ sudo apt install libapache2-mod-php
$ sudo apt install php-mysql
$ sudo apt install php-gd php-mcrypt php-mbstring php-xml php-ssh2
$ sudo service apache2 restart
$ sudo apt-get install php-curl
$ sudo apt-get unzip
$ sudo a2enmod rewrite #mengaktifkan modul rewrite
$ sudo nano etc/apache2/apache2.conf 
   AllowOverride All
   Order allow,deny
   Allow from all
$ sudo service apache2 restart
$ sudo mysql –u root –p
   mysql > CREATE DATABASE vanilla_forums;
   mysql > GRANT ALL ON my_vanilla_forums.* TO username@localhost 
   IDENTIFIED BY'password';
   mysql quit;
$ cd /var/www/example.com/html
$ sudo mkdir /var/www/example.com/html/vanilla
$ cd /var/www/example.com/html/vanilla
$ sudo wget https://open.vanillaforums.com/get/vanilla-core-2.3.zip 
$ sudo unzip vanilla-core-2.3.zip  
$ sudo chmod -R 777 conf/ uploads/ cache/
$ sudo nano .htaccess
$ sudo ln -s /etc/phpmyadmin/apache.conf 
/etc/apache2/conf-available/phpmyadmin.conf
$ sudo a2enconf phpmyadmin.conf
$ sudo systemctl reload apache2.service
