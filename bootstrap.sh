sudo apt update

sudo apt -y install bind9 bind9utils bind9-doc dnsutils
sudo apt install ftp -y
sudo apt install vsftpd -y

cp /vagrant/config/named.conf.options /etc/bind/
cp /vagrant/config/named.conf.local /etc/bind/
cp /vagrant/config/paco.com.dns /var/lib/bind/
cp /vagrant/config/paco.com.rev /var/lib/bind/

sudo chown bind:bind /var/lib/bind/paco.com.dns
sudo chown bind:bind /var/lib/bind/paco.com.rev
sudo chmod 644 /var/lib/bind/paco.com.dns
sudo chmod 644 /var/lib/bind/paco.com.rev

sudo systemctl restart bind9