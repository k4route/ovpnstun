FROM ubuntu:latest

MAINTAINER k4

ENV DEBIAN_FRONTEND=noninteractive
RUN apt clean && apt -y update && apt install -y --no-install-recommends vim openvpn stunnel4 iptables && \
    mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 600 /dev/net/tun 	
	
COPY startup.sh .
COPY openvpn.conf /etc/openvpn
COPY stunnel.conf /etc/stunnel
COPY stunnel.pem /etc/stunnel

CMD ["/bin/bash","-c","./startup.sh"]
