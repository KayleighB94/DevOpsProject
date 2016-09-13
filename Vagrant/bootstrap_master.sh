sudo apt-get install –y openssh-server openssh-client

sudo apt-get install –y puppet puppetmaster

sudo ufw disable

#Variables
agentip = $(sudo facter ipaddress_eth1)
agentfqdn = $(sudo facter fqdn)

sudo sed -i "1s/^/127.0.0.1 $agentfqdn puppetmaster \n$agentip $agentfqdn puppetmaster\n /" /etc/hosts

sudo touch /etc/puppet/manifests/site.pp

sudo puppet cert list
sudo puppet cert sign –all

sudo apt-get update 
sudo apt-get install default-jre
sudo apt-get install default-jdk
