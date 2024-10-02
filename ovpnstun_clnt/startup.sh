#!/bin/bash

#add stunnel/openvpn server IP as a /32 route to keep it once ovpn replace DGW with its own
route add -host 192.168.3.153 gw 192.168.2.1

/usr/sbin/iptables -A FORWARD -i eth0 -o eth0 -j DROP
/usr/sbin/iptables -t nat -I POSTROUTING -s 192.168.2.0/24 -o tun0 -j MASQUERADE
/usr/bin/stunnel4 /etc/stunnel/stunnel.conf &
openvpn --config /etc/openvpn/openvpn.conf 
