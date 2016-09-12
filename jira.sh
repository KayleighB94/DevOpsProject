#!/usr/bin/expect

#navigate to the bin folder
cd /bin/
#download the file
sudo wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.2.1-x64.bin
#check that it is executible
sudo chmod a+x atlassian-jira-software-7.2.1-x64.bin
#run the file
sudo ./atlassian-jira-software-7.2.1-x64.bin
#everything below here doesnt work yet
#ok to install
expect "OK [o, Enter], Cancel [c]" {send "o\r"}
#choose express install
1
#install
i

interact
