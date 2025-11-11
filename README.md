# Project Name
### Configuración de un servidor FTP

# Author Name
### Francisco José Serrano Muñoz

#### Configuro de nuevo los archivos del config para que funcionen en la ip 192.168.56.101 y en el dominio paco.com
## Configuración del archivo named.conf.options
![Configuración named.conf.options](/doc/named.conf.options.png)

## Configuración del archivo named.conf.local
![Configuración named.conf.local](/doc/named.conf.local.png)

## Creación del archivo de zona
![Creación del archivo de zona](/doc/paco.com.dns.png)

## Zona para la resolución inversa
![Creación del archivo de zona inversa](/doc/paco.com.rev.png)

#### ftp.cica.es me da error cuando intento conectarme desde un ftp gráfico.
#### De modo que seguiré la práctica desde un cmd

## Descarga del archivo check desde ftp.cica.es
![Descarga del archivo check desde ftp.cica.es](/doc/ftp.cica.es.png)
#### He tenido que realizar estos pasos desde un powershell, pero igualmente
#### he podido descargar el archivo check.
#### Pero no se puede subir el archivo datos1.txt por falta de permisos.

## Así ha quedado el directorio pruebasFTP
![Directorio pruebasFTP](doc/pruebasFTP.png)

## Instalo vsftpd en en el servidor desde bootstrap.sh
![Instalacion vsftpd](doc/instalacion-ftp.png)

## Compruebo que se ha creado el usuario ftp
![Usuario ftp](doc/usuario-ftp.png)

## Compruebo el propietario root y el grupo ftp
![Propietario y grupo](doc/comprobacion-propietario-grupo.png)

## Miro la lista de usuarios no permitidos
![Usuarios no permitidos](doc/usuarios-nopermitidos.png)

## Compruebo que el servidor esta iniciado y en ejecución
![Servidor iniciado y en ejecución](doc/servidor-iniciado.png)

## Compruebo que el servidor esta escuchando el puerto 21
![Servidor puerto 21](doc/puerto21.png)

## Creo una copia de seguridad
![Copia de seguridad](doc/copia-seguridad.png)

## Creo los nuevos usuarios
![Creación de usuarios](doc/usuarios.png)

## Asigno las contraseñas de cada usuario
![Asignación de contraseñas](doc/contraseñas.png)

## Creo los ficheros de prueba
![Creación de ficheros de prueba](doc/ficheros-prueba.png)