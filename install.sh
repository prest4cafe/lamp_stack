#!/bin/bash
#Auteur: Alexandre Carette
#Contact: alexandre@baba-agency.com
echo Installation LAMP Stack Ubuntu // PHP7.4-fpm pour prestashop...
 
# On demande le nom l'user qui est le nom du site 
read -p "Enter site name / username:" siteuser
username="$siteuser"
apt-get update
apt-get upgrade
apt-get dist-upgrade

apt install nano
apt install curl

# installation du serveur http apache2
apt-get install apache2 apache2-utils
# installation du serveur sql mysql
apt-get install mariadb-server
# securitation de mysql
mysql_secure_installation

add-apt-repository ppa:ondrej/php
apt-get update
apt install aptitude

aptitude update
aptitude full-upgrade
aptitude install pkg-php-tools php7.4-fpm php7.4-cli php7.4-common php7.4-curl php7.4-gd php7.4-imap php7.4-intl php7.4-mysql php7.4-pspell php7.4-sqlite3 php7.4-tidy php7.4-opcache php7.4-json php7.4-bz2 php7.4-mcrypt php7.4-readline php7.4-xmlrpc php7.4-enchant php7.4-xsl php7.4-mysql php7.4-zip php7.4-soap php7.4-gettext php7.4-mbstring
update-alternatives --set php /usr/bin/php7.4-fpm
apt-get install  libapache2-mod-php7.4
apt-get install -y php-memcached 

phpenmod mcrypt
a2enmod rewrite
a2enmod php7.4-fpm
a2enmod expires
a2enmod headers
apt-get install rar
apt-get install unzip
apt-get install unrar-free
apt-get install zip
apt-get install memcached php5.6-memcached
apt-get update
apt-get install mailutils
apt-get install zip

apachectl stop
apt-get install php7.4-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.4-fpm
a2dismod php7.4
a2dismod mpm_prefork
a2enmod mpm_event
apachectl start

a2enmod headers
a2enmod expires
apt install php7.4-mbstring
apt install php7.4-mysqli
apt install php7.4-curl
apt install php7.4-simplexml
apt install php7.4-gd
apt install php7.4-mysql
apt install php7.4-intl
apt install php7.4-soap
apt install php7.4-mcrypt
apt install php7.4-curl
apt install php7.4-json 
apt install php7.4-bz2
apt install php7.4-gettext 
apt install php7.4-mbstring
apt-get install php7.4-zip

phpenmod opcache
service apache2 restart
 
#cd /usr/local/sbin
#wget https://dl.eff.org/certbot-auto
#chmod a+x /usr/local/sbin/certbot-auto
adduser $siteuser
usermod -aG sudo $siteuser
usermod -a -G www-data $siteuser

cd /home/$siteuser

cd /etc/apache2
echo "<Directory /home>
        Options FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
ServerSignature Off
ServerTokens ProductOnly
Protocols h2 h2c http/1.1" >> apache2.conf

sudo update-alternatives --set php /usr/bin/php7.4
a2enmod http2
service apache2 restart

#read -p "on crée une clef ssh"
#read -p "ATTENTION ne pas mettre de pass phrase !"
#ssh-keygen -t rsa
#read -p "on copie la clef RSA ver LOLO"
#ssh-copy-id -i ~/.ssh/id_rsa.pub root@213.32.2.95
#apt install zip
sudo apt-get install python3-certbot python3-certbot-apache
sudo apt install fail2ban
sudo apt-get install sendmail

sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

exit 0
