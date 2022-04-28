FROM ubuntu
# apt install --fix-missing -y iproute2 && apt install -y isc-dhcp-client && dhclient -r eth0 && dhclient && tail -F anything
RUN apt update
RUN apt install --fix-missing -y iproute2
RUN apt install -y isc-dhcp-client
RUN dhclient -r eth0 -s 10.0.1.5
