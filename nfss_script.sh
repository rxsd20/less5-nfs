#start nfs-server
sudo yum install nfs-utils -y
#add firewalld
sudo yum install firewalld.noarch
sudo systemctl enable firewalld
sudo systemctl restart firewalld
firewall-cmd --permanent --add-port=111/tcp
firewall-cmd --permanent --add-port=20048/udp
firewall-cmd --permanent --zone=public --add-service=nfs
firewall-cmd --permanent --zone=public --add-service=mountd 
firewall-cmd --permanent --zone=public --add-service=rpc-bind 
firewall-cmd --reload 
#continue start nfs-server
sudo systemctl enable rpcbind
sudo systemctl enable nfs-server
sudo systemctl start rpcbind
sudo systemctl start nfs-server
sudo mkdir /nfs
sudo chmod -R 777 /nfs
sudo echo "/nfs 192.168.50.0/24(rw,sync,no_root_squash,no_all_squash)" > /etc/exports
sudo exportfs -a
sudo systemctl restart nfs-server
