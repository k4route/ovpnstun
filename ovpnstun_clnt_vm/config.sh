#!/bin/bash

apt clean && apt -y update && apt install -y --no-install-recommends vim openvpn stunnel4 iptables &&
apt install -y traceroute net-tools iputils-ping tcpdump &&
cp 00-installer-config.yaml /etc/netplan/
cp openvpn.conf /etc/openvpn/
cp stunnel.conf /etc/stunnel/
cp stunnel.pem /etc/stunnel/
