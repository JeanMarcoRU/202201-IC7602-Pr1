FROM ubuntu
RUN apt update
RUN apt install --fix-missing -y iproute2
RUN apt install -y iputils-ping
RUN apt install -y traceroute
RUN apt install -y telnet
RUN apt install -y curl
RUN apt install -y dnsutils
RUN apt install -y isc-dhcp-client
RUN dhclient -r eth0 -s 10.0.1.5
RUN apt-get install -y traceroute
