#!/bin/sh

# Log as super user and install common tools
sudo -i
yum -y install vim git wget curl net-tools bind-utils tree httpd
# yum install bind-utils -y
wget --no-cookies --no-check-certificate --header "Cookie:oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"
yum -y localinstall jdk-8u131-linux-x64.rpm
wget https://github.com/streamaserver/streama/releases/download/v1.10.4/streama-1.10.4.jar
# Install and run DNS
# yum install bind-utils bind-libs bind-* -y

# systemctl start named
# systemctl enable named

# mv /etc/named.conf /etc/named.conf.original
# cp /vagrant/config_files/named.conf /etc/named.conf

# cp /vagrant/config_files/vallesoft.com.fwd /var/named/vallesoft.com.fwd
# cp /vagrant/config_files/vallesoft.com.rev /var/named/vallesoft.com.rev

# chmod 755 /var/named/vallesoft.com.fwd
# chmod 755 /var/named/vallesoft.com.rev

# systemctl disable firewalld
# service named restart

# Install and run HTTPS
# yum install httpd -y
# yum install mod_ssl -y

#systemctl start httpd
#systemctl enable httpd

#mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.original
#cp /vagrant/config_files/httpd.conf /etc/httpd/conf/httpd.conf
# cp /vagrant/config_files/index.html /var/www/html/

#service httpd start

# SELINUX configuration
mv /etc/selinux/config /etc/selinux/config.original
cp /vagrant/config_files/config /etc/selinux/

reboot