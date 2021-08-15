sudo yum install nfs-utils -y
#configuration firewalld
sudo yum install firewalld.noarch
sudo systemctl enable firewalld
sudo systemctl restart firewalld
#proceed nfs task
sudo systemctl enable rpcbind
sudo systemctl enable nfs-server
sudo systemctl start rpcbind
sudo systemctl start nfs-server
#add to conf vars
echo "Defaultvers=3" >> /etc/nfsmount.conf
echo "Defaultproto=udp" >> /etc/nfsmount.conf
#
sudo mkdir /nfs
#sudo echo "mount -t nfs -o vers=3 192.168.50.10:/nfs/ /nfs" >> /etc/rc.local
sudo echo "192.168.50.10:/nfs/ /nfs/ nfs rw,sync,hard,intr 0 0" >> /etc/fstab
sudo mount -a
df -h
mount |grep /nfs
