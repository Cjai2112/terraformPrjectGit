#!/bin/bash -ex
yum -y update
yum -y install httpd php mysql php-mysql
chkconfig httpd on
service httpd start
cd/var/www/html
wget PUT OBJECT URL HERE
tar xvfz app.tgz
chown apache:root /var/www/html/rds.conf.phpx