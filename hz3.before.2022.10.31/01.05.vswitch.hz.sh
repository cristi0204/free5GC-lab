apt-get install vlan
sudo modprobe 8021q
cat 01.06.vswitch.config.yaml >>/etc/netplan/01-netcfg.yaml
sudo /lib/netplan/generate
sudo systemctl restart systemd-networkd
sleep 1
hostname -I
# check firewall incomming to robot
#telnet 10.0.0.6 443
