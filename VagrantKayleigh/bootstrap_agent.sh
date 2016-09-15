#installs
sudo apt-get update
sudo apt-get install -y openssh-server openssh-client
sudo apt-get install -y facter
sudo apt-get install -y vagrant
sudo apt-get install -y vim
sudo apt-get install -y puppet
sudo apt-get install -y icedtea-netx
echo 'devops - Installs completed '

#uk keyboard
setxkbmap -layout gb

#firewall
sudo ufw disable
echo 'devops - Firewall disabled '

#get fqdn and ip
agentfqdn=$(sudo facter fqdn)
agentip=$(sudo facter ipaddress_eth1)
echo 'devops - Variables set'

#edit host file
sudo sed -i "1s/^/192.168.1.25  ammaster3.qac.local  puppetmaster \n127.0.0.1 $agentfqdn puppet \n$agentip $agentfqdn puppet\n\n/" /etc/hosts
echo 'devops - Hostfile edited'

#edit puppet conf
sudo sed -i "2i server = ammaster3.qac.local" /etc/puppet/puppet.conf
echo 'devops - Puppet.conf edited'

#restart puppet
sudo service puppet stop
sudo service puppet start
sudo puppet agent --enable
echo 'devops - Puppet restarted'

#test master connection
sudo puppet agent --test --server=ammaster3.qac.local
echo 'devops - Puppet master connection tested'