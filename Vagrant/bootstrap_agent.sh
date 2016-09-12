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

192.168.1.25  ammaster.qac.local  puppetmaster
127.0.0.1 FqdnId  puppet
IpId  FqdnId  puppet

#edit puppet conf
sudo vi /etc/puppet/puppet.conf

server = ammaster.qac.local
