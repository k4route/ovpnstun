#!/bin/bash

/usr/sbin/iptables -A FORWARD -i eth0 -o eth0 -j DROP
/usr/sbin/iptables -t nat -I POSTROUTING -s 192.168.2.0/24 -o tun0 -j MASQUERADE
/usr/bin/stunnel4 /etc/stunnel/stunnel.conf &
openvpn --config /etc/openvpn/openvpn.conf 
