sudo docker pull kylemanna/openvpn
docker run --rm -v $PWD:/etc/openvpn kylemanna/openvpn ovpn_genconfig -u udp://10.0.2.15:1194
docker run --rm -v $PWD:/etc/openvpn -it kylemanna/openvpn ovpn_initpki
#Aquí se crea un usuario y contraseña
docker run --rm -v $PWD:/etc/openvpn -it kylemanna/openvpn easyrsa build-client-full client
#Aquí se pone el usuario y contraseña del paso anterior
docker run --rm -v $PWD:/etc/openvpn kylemanna/openvpn ovpn_getclient client > client.ovpn
docker run --name openvpn -v $PWD:/etc/openvpn -d -p 1194:1194/udp --cat-add=NET_ADMIN --restart always kylemanna/openvpn