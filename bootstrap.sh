sudo apt update

sudo apt -y install bind9 bind9utils bind9-doc dnsutils
sudo apt install ftp -y
sudo apt install vsftpd -y
sudo apt install dos2unix -y

cp /vagrant/config/named.conf.options /etc/bind/
cp /vagrant/config/named.conf.local /etc/bind/
cp /vagrant/config/paco.com.dns /var/lib/bind/
cp /vagrant/config/paco.com.rev /var/lib/bind/

sudo chown bind:bind /var/lib/bind/paco.com.dns
sudo chown bind:bind /var/lib/bind/paco.com.rev
sudo chmod 644 /var/lib/bind/paco.com.dns
sudo chmod 644 /var/lib/bind/paco.com.rev

sudo systemctl restart bind9

sudo cp /vagrant/config/vsftpd.conf /etc/vsftpd.conf
sudo cp /vagrant/config/vsftpd.chroot_list /etc/vsftpd.chroot_list
sudo dos2unix /etc/vsftpd.conf

sudo mkdir -p /srv/ftp/uploads
sudo chown root:root /srv/ftp
sudo chmod 755 /srv/ftp
sudo chown ftp:ftp /srv/ftp/uploads
sudo chmod 755 /srv/ftp/uploads
sudo bash -c 'echo "Archivo de ejemplo en uploads" > /srv/ftp/uploads/prueba.txt'
sudo chown ftp:ftp /srv/ftp/public/anonimo.txt /srv/ftp/uploads/prueba.txt
sudo chmod 644 /srv/ftp/public/anonimo.txt /srv/ftp/uploads/prueba.txt


echo
for user in luis maria miguel; do
    if ! id -u $user >/dev/null 2>&1; then
        sudo useradd -m $user
        echo "$user:$user" | sudo chpasswd
    fi
done

for user in luis maria miguel; do
    sudo mkdir -p /home/$user/uploads
    sudo chown $user:$user /home/$user/uploads
    sudo chmod 755 /home/$user/uploads
done

for user in luis maria miguel; do
    echo "Archivo de prueba para $user" | sudo tee /home/$user/uploads/prueba_$user.txt >/dev/null
    sudo chown $user:$user /home/$user/uploads/prueba_$user.txt
    sudo chmod 644 /home/$user/uploads/prueba_$user.txt
done

sudo systemctl enable vsftpd
sudo systemctl restart vsftpd
sudo systemctl status vsftpd