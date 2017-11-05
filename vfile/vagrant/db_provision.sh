sudo -y update
sudo -y install mysql-server
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
restart mysql-server
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"