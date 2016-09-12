#installs
sudo apt-get install openssh-server openssh-client
sudo apt-get install facter
sudo apt-get install vagrant
sudo apt-get install vim
sudo apt-get install puppet

#firewall
sudo ufw disable

#get fqdn and ip
FqdnId = $(sudo facter fqdn)
IpId = $(sudo facter ipaddress_eth1)

#edit host file
sudo vi /etc/hosts
