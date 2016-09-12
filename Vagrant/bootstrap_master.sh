sudo apt-get install �y openssh-server openssh-client

sudo apt-get install �y puppet puppetmaster

sudo ufw disable

#Variables
agentip = $(sudo facter ipaddress_eth1)
agentfqdn = $(sudo facter fqdn)

sed -i "1s/^/127.0.0.1 $agentfqdn puppetmaster \n$agentip $agentfqdn puppetmaster\n /" /etc/hosts