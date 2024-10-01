#!/bin/bash

iptables-restore < iptables-save
/usr/bin/stunnel4 /etc/stunnel/stunnel.conf &
openvpn --config /etc/openvpn/openvpn.conf 
