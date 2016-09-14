#set language
sudo locale-gen en_US.UTF-8
#update
sudo apt-get update
#install server
sudo apt-get install -y openssh-server openssh-client
#install vim
sudo apt-get install -y vim

#disable firewall
sudo ufw disable
echo 'devops - ufw disabled'

#install puppet
sudo apt-get install -y puppet puppetmaster
echo 'devops - puppet installed'

#Variables
agentfqdn=$(sudo facter fqdn)
agentip=$(sudo facter ipaddress_eth1)
echo  'devops - variables set ' $agentfqdn
echo  'devops - variables set ' $agentip

#edit host file
sudo sed -i "1s/^/127.0.0.1 $agentfqdn puppetmaster \n$agentip $agentfqdn puppetmaster\n\n/" /etc/hosts
echo 'devops - hosts edited'

#create site.pp
sudo touch /etc/puppet/manifests/site.pp
echo 'devops - site touched'

#autosign
sudo sed -i "\$aautosign = true" /etc/puppet/puppet.conf
echo 'devops - autosign enabled'

#java puppet install
puppet module install puppetlabs-java
echo 'devops - java installed'
#jenkins puppet install
puppet module install rtyler-jenkins
echo 'devops - jenkins installed'
#maven puppet install
puppet module install maestrodev-maven
echo 'devops - maven installed'
#git puppet install
puppet module install puppetlabs-git
echo 'devops - git installed'
#jira puppet install
puppet module install mkrakowitzer-jira
echo 'devops - jira installed'

#catalog
sudo bash -c 'echo > /etc/puppet/manifests/site.pp'
sudo sed -i "\$a\node 'agentkayleighb.qac.local', 'agentgemma.qac.local', 'agentameen.qac.local', 'agentchibz.qac.local', 'agenttomr.qac.local' { \n\tinclude java \n\tinclude jenkins \n\tinclude maven \n\tinclude git \n\tclass { 'jira':\n\t\tjavahome    => '/opt/java',\n\t}\n}" /etc/puppet/manifests/site.pp
echo 'devops - code added to catalog'