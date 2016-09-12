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

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins