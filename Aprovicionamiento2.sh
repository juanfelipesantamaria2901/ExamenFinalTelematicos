systemctl restart httpd
setenforce 0
systemctl restart streama
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
