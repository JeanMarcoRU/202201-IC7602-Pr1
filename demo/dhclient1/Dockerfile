FROM ubuntu
RUN apt update
RUN apt install --fix-missing -y iproute2
RUN apt install -y iputils-ping
RUN apt install -y traceroute
RUN apt install -y telnet
RUN apt install -y curl
RUN apt install -y dnsutils
RUN echo "export http_proxy=http://10.0.0.7:8443/" >> ~/.bashrc
RUN echo "export https_proxy=http://10.0.0.7:8443/">> ~/.bashrc
RUN echo "export ftp_proxy=http://10.0.0.7:8443/" >> ~/.bashrc
RUN echo "export no_proxy=\”localhost,127.0.0.1,localaddress,.localdomain.com\”">>~/.bashrc
RUN apt install -y isc-dhcp-client
RUN dhclient -r eth0 -s 10.0.0.4