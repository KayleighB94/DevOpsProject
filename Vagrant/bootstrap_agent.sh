#installs
sudo apt-get update
sudo apt-get install -y openssh-server openssh-client
sudo apt-get install -y facter
sudo apt-get install -y vagrant
sudo apt-get install -y vim
sudo apt-get install -y puppet
echo 'Installs completed '

#firewall
sudo ufw disable
echo 'Firewall disabled '

#get fqdn and ip
agentfqdn = $(sudo facter fqdn)
agentip = $(sudo facter ipaddress_eth1)
echo 'Variables set'

#edit host file
sudo sed -i "1s/^/192.168.1.25  ammaster.qac.local  puppetmaster \n127.0.0.1 $agentfqdn puppet \n$agentip $agentfqdn puppet\n /" /etc/hosts
echo 'Hostfile edited'

#edit puppet conf
sudo sed -i "2i server = ammaster.qac.local" /etc/puppet/puppet.conf


sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
=======
echo 'Puppet.conf edited'
