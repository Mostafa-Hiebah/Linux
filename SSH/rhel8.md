### == install SSH Client to access other servers through SSH ==
yum install openssh-client

### Test 
ssh user@192.168.1.2

------------------------------------------------------------------

### == install SSH Server to allow access this server through SSH ==
yum install openssh-server

#### -- enable service --
systemctl enable sshd

#### -- enable ssh through firewall --
firewall-cmd --zone=public --permanent --add-service=ssh
firewall-cmd --reload

#### -- start/stop service --
systemctl start sshd
systemctl stop sshd
systemctl reload sshd

#### -- service status --
systemctl status sshd
