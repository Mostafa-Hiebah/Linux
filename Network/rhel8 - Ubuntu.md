#### - Network Manger is the service resposible for networking
#### - NIC may have more than one connection .. but one connection active per time .. show all connection using (ip a)


### == install network tools ==  

#### -- RedHat --
yum install net-tools  
yum install NetworkManager

#### -- Ubuntu --
sudo apt install net-tools  
sudo apt-get install network-manager

### == Start/Enable Service ==
systemctl start NetworkManager.service  
systemctl enable NetworkManager.service

### == Monitor when add/remove physical device ==
udevadm monitor

### == Network Service Status ==
systemctl status NetworkManager  

### == Show NIC Configuration ==
ifconfig  

### == Change IP in runtime ==
sudo ifconfig ens160 10.0.0.10/8  

### == show routes/gate way (low metric is high priority) ==
ip route  
route -n  

### == Show Physical NIC Connected ==
nmcli device

### == Create Connection for new NIC after add it ==
nmcli dev con ens224

### == Show NIC Connections ==
nmcli con show

### == show all config for NIC ==  
nmcli dev show ens160

### == Disconnect NIC (state unmanaged) in run time ==
nmcli device set ens224 managed no

### == root and normal user login local have network control permession ==
nmcli general permissions 

### == Deactivate all NIC ==
nmcli networking off

### == Check Connectivity (none - portal - limited - full - unknown) ==
sudo nmcli networking connectivity check

### == Show Connection/Devices Status ==
nmcli general status

### == connection activate/re-read connection file for ens160 (refresh) ==
nmcli connection up ens160  
nmcli connection down ens16  
sudo ifconfig ens38 up  
sudo ifconfig ens38 down  
 
### == enter interactive mode editor ==
nmcli connection edit Wired\ connection\ 2  
nmcli connection edit ens160  

### == Delete Connection ==
nmcli connection delete ens160  

### == Create Connection by default config (dhcp) ==
nmcli device connect ens160  

### == Add more connection for one interface/Activate Connection on interface ==
nmcli connection add type ethernet con-name test160 ifname ens160 ipv4.method manual ipv4.addresses 192.168.1.6/24 ipv4.gateway 192.168.1.1 ipv4.dns 192.168.1.1     connection.autoconnect yes  
nmcli connection up test160  

nmcli connection modify .....  

### == release ==
dhclient -r ens160
