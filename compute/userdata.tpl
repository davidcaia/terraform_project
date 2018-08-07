#!/bin/bash
yum install -y httpd
echo "This is a test server!" >> /var/www/html/index.html
service httpd start
chkconfig httpd on