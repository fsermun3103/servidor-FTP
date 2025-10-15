sudo apt update

sudo apt -y install bind9 bind9utils bind9-doc dnsutils

cp /vagrant/config/named.conf.options /etc/bind/
cp /vagrant/config/named.conf.local /etc/bind/
cp /vagrant/config/paco.test.dns /var/lib/bind/
cp /vagrant/config/paco.test.rev /var/lib/bind/

sudo chown bind:bind /var/lib/bind/paco.test.dns
sudo chown bind:bind /var/lib/bind/paco.test.rev
sudo chmod 644 /var/lib/bind/paco.test.dns
sudo chmod 644 /var/lib/bind/paco.test.rev

sudo systemctl restart bind9