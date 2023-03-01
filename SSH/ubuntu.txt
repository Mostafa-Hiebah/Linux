### == update ubuntu repo ==
sudo apt-get update
sudo apt-get upgrade

### == install SSH Client to access other servers through SSH ==
sudo apt-get install openssh-client

#### -- Test --
ssh user@192.168.1.2
----------------------------------------------------------------


### == install SSH Server to allow access this server through SSH ==
sudo apt install openssh-server

#### -- enable service --
sudo systemctl enable ssh
#### -- enable ssh through firewall --
sudo ufw allow ssh

#### -- start/stop service --
sudo systemctl start ssh
sudo systemctl stop ssh
sudo systemctl restart ssh

#### -- service status --
sudo systemctl status ssh
