# Proyecto I

###### Jean Marco Rojas U. - 2015040717, Alonso Obando - 20000000000, Esteban - 2018104794

![image](https://user-images.githubusercontent.com/15478613/162591470-a658ec42-2ce4-4e73-abef-aea8b82d2c0d.png)

## Instrucciones de Ejecución

### Paso 1

Primeramente debe instalarse docker y docker-compose cuya instalación depende del sistema operativo, si es ubuntu siga el siguiente [tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04-es), si es windows basta con instalar docker desktop siguiendo este otro [tutorial](https://docs.docker.com/desktop/windows/install/), para cualquier otro sistema operativo se recomienda consultar el [sitio oficial](https://docs.docker.com/get-docker/).

### Paso 2

El paso 2 consiste en descargar el presente repositorio ya sea por medio del comando de git:

```
git clone https://github.com/JeanMarcoRU/202201-IC7602-Pr1
```

O por descarga directa desde la página web de github.

### Paso 3

Se procede a acceder con una consola de comandos a la carpeta demo, si se descargó con el comando git mostrado anteriormente, se proseguiría de la siguiente forma:

```
cd 202201-IC7602-Pr1/demo
```

### Paso 4

Una vez en este punto basta con levantar el proyecto con docker-compose por medio del siguiente comando:

```
docker-compose up -d
```

Si se siguieron las instrucciones correctamente, comando anterior debería mostrar una salida en la que se muestra el proceso de creación y levantamiento de cada contenedor, se debe imprimir en verde la palabra "done" después de cada contenedor de la red.

## Pruebas Realizadas

### Prueba del DHCP

Para validar el arrendamiento de IP para los clientes, una vez levantado el docker compose, se puede ejecutar el siguiente comando:

```
docker exec -it cliente1 ip a
```

Y observar en la penúltima línea del resultado de la ejecución anterior el IP en rango especificado en el enunciado del proyecto, como muestra la siguente imagen, el IP 10.0.0.101

![imagen](https://github.com/JeanMarcoRU/202201-IC7602-Pr1/blob/main/pruebas/cliente1%20ip%20address.png)

### Prueba del proxy reverso

Este contenedor tiene una funcionalidad particular la cual es que da respuesta de forma intercalada entre la página web 1 y la página web 2, por lo que cada vez que se accede al sitio con ip 10.0.0.20, la respuesta varía con respecto a la anterior, como se ilustra en las siguientes dos imágenes, este es el resultado de la primera consulta:
![imagen](https://github.com/JeanMarcoRU/202201-IC7602-Pr1/blob/main/pruebas/request1.jpeg)
Y después recargando la página:
![imagen](https://github.com/JeanMarcoRU/202201-IC7602-Pr1/blob/main/pruebas/request2.jpeg)

### Prueba del web cache

El web cache funciona para que no sea necesario trasmitir la totalidad de los datos de los sitios a los que se suelen hacer visitas, con lo que si se implementa este cache se lograrán tiempos de respuesta más bajos cuando las solicitudes al sitio sean reiteradas. En este contexto, se le enviaron 10000 requests en grupos de 100 por medio del software de testing llamado ApacheBench, primero al web server 1 (el cual implementa el web cache) y después al web server 2 (el cual no tiene cache) y se obtuvieron los siguientes resultados:
![imagen](https://github.com/JeanMarcoRU/202201-IC7602-Pr1/blob/main/pruebas/test1.jpeg)
En la imagen anterior se logra apreciar que la media del total de atención a las requests es de 8 ms.
Ahora se muestran los resultados de la prueba realizada con el web server 2:
![imagen](https://github.com/JeanMarcoRU/202201-IC7602-Pr1/blob/main/pruebas/test2.jpeg)
Con esta prueba, la cual sitúa el tiempo promedio de atención a las requests en 11 ms, con lo cual queda en evidencia la mejoría.

## Recomendaciones

Como parte del proceso de aprendizaje y conservación de lo aprendido se proceden a enumerar 10 recomendaciones que nuestro equipo de trabajo da a cualquiera interesado en replicar este proyecto o hacer uno similar:

1. Es muy util saber manejar la consola de comandos principalmente de ubuntu, por lo que se recomienda haber llevado por lo menos un curso introductorio al uso de la consola de comandos.
2. Para asegurar la robustez de la red que se planea diseñar es importante realizar diagramas y tener clara toda la especificación, para nosotros fue particularmente útil el diagrama en el que se muestran todos los componentes del proyecto con sus respectivos IPs estáticos (Excepto por los clientes, ellos le solicitan al DHCP una IP según el rango especificado en la misma imagen).
3. Se debe estar seguros de las bases del proyecto, por lo que investigar el funcionamiento de docker, docker-compose y además el networking con docker.
4. Recomendamos trabajar directamente desde Linux, particularmente con Ubuntu fue el sistema operativo con el que trabajamos.
5. Se recomienda navegar ampliamente por las imágenes ya construidas que dispone docker, ya que pueden disminuir el trabajo de levantar los servidores teniendo que ejecutar tal vez una serie de comandos no muy corta.

## Conclusiones

Como parte de este proyecto se llegaron a una serie de conclusiones las cuales a continuación se detallan:

1. Para configurar servidores es fundamental el manejo de comandos para la puesta en marcha de los mismos.
2. Docker es un robusto sistema para el manejo de contenedores del tipo que se manejan en este proyecto, cada uno con su imagen inicial ya sea de un sistema operativo o de algún servidor especial como los DHCP o DNS.
3. Se logró implementar la gran mayoría de lo solicitado en el enunciado del proyecto, por lo que nuestros conocimientos en diseño e implementación de redes se ha visto ámpliamente beneficiado.
4. Se logró la implementación y configuración de routers, servidores DHCP, DNS y VPN.
5. Se consiguió implementar las reglas de enrutamiento especificadas y requeridas para la comunicación de la red.
6. Se implementaron reglas de firewall para validar la seguridad de la red.
7. Se implementó un proxy reverso cuya respuesta viene dada por un set de servicios (los cuales en este caso son dos páginas web), ya que estos están expuestos en la misma dirección de dominio y puerto. Se consigue acceder primero a uno y luego al otro cada vez que se recarga la página.
8. Se logra probar la funcionalidad de la red por medio de los web servers y de los clientes de la red.
9. Se logró automatizar la configuración de cada uno de los servidores por medio de shell scripts y docker-compose.
10. Se probaron las herramientas de diagnostico de redes y se validó el funcionamiento de cada parte.

###

Comandos
https://dockerlabs.collabnix.com/docker/cheatsheet/
