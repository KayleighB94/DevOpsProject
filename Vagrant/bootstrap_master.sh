
sudo locale-gen en_US.UTF-8

sudo apt-get update

sudo apt-get install -y openssh-server openssh-client

sudo ufw disable
echo 'devops - ufw disabled'

sudo apt-get install -y puppet puppetmaster
echo 'devops - puppet installed'

#Variables
agentfqdn=$(sudo facter fqdn)
agentip=$(sudo facter ipaddress_eth1)
echo  'devops - variables set ' $agentfqdn
echo  'devops - variables set ' $agentip

sudo sed -i "1s/^/127.0.0.1 $agentfqdn puppetmaster \n$agentip $agentfqdn puppetmaster\n\n/" /etc/hosts
echo 'devops - hosts edited'

sudo touch /etc/puppet/manifests/site.pp
echo 'devops - site touched'

sudo puppet cert list
echo 'devops - certs listed'
sudo puppet cert sign -all
echo 'devops - certs signed'


sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
echo 'devops - java installed'

#wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
#sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
#sudo apt-get install jenkins
