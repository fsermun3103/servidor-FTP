# Project Name
### dns-paso-a-paso

# Author Name
### Francisco José Serrano Muñoz

## Configuración del archivo named.conf.options
![Configuración named.conf.options](/doc/configuración-archivo-named.conf.options.png)

## Configuración del archivo named.conf.local
![Configuración named.conf.local](/doc/configuración-archivo-named.conf.local.png)

## Creación del archivo de zona
![Creación del archivo de zona](/doc/creación-archivo-zona.png)

## Zona para la resolución inversa

### Actualización del archivo named.conf.local
![Actualización del archivo named.conf.local](/doc/update-named.conf.local.png)

### Creación de la zona inversa
![Creación del archivo de zona](/doc/creación-archivo-zona-inversa.png)

## Comprobación con dig
![Comprobación con dig](/doc/comprobación-dig.png)
#### Esta comprobación me estaba dando errores, ya que al poner la ip de windows 192.168.56.10
#### no se me conectaba al servidor.
#### He solucionado esto comprobando con la ip del servidor (127.0.0.1) y con esto he recibido
#### El resultado esperado.

## Comprobación con nslookup
![Comprobación con nslookup](/doc/comprobación-nslookup.png)

#### Aquí sucede lo mismo, el enunciado me dice que lo haga con la ip de windows,
#### pero me funciona con la ip del servidor.