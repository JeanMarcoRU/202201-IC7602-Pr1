# Proyecto I

###### Jean Marco Rojas U. - 2015040717, Alonso Obando - 20000000000, Esteban - 2018104794

![image](https://user-images.githubusercontent.com/15478613/162591470-a658ec42-2ce4-4e73-abef-aea8b82d2c0d.png)

## Instrucciones de Ejecución

### Paso 1

Primeramente debe instalarse docker y docker-compose cuya instalación depende del sistema operativo, si es ubuntu siga el siguiente [tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04-es), si es windows basta con instalar docker desktop siguiente este otro [tutorial](https://docs.docker.com/desktop/windows/install/), para cualquier otro sistema operativo se recomienda consultar el [sitio oficial](https://docs.docker.com/get-docker/).

### Paso 2

Descargar el presente repositorio ya sea por medio del comando de git:

```
git clone https://github.com/JeanMarcoRU/202201-IC7602-Pr1
```

O por descarga directa desde la página web de github.

### Paso 3

Se procede a acceder con una consola de comandos a la carpeta demo, si se descargó con el comando git, se proseguiría de la siguiente forma:

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

![imagen]()

###

Comandos
https://dockerlabs.collabnix.com/docker/cheatsheet/
