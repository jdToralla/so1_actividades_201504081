# Instalación y uso de systemd - Actividad 4

## Instalación de systemd

1. Abrir una terminal.
2. Ejecutar el siguiente comando para actualizar la lista de paquetes:
~~~
sudo apt update
~~~
3. Ejecute el siguiente comando para instalar systemd:

~~~
sudo apt install systemd
~~~
4. Espere a que finalice la instalación.

## Uso de systemd

Para ejecutar un archivo "saludo.sh" que imprime un string de bienvenida con hora y fecha actual usando systemd y con contenido:
~~~
#!/bin/bash
echo "Bienvenido la fecha de hoy es: $(date)"
~~~
y con cambio de permisos basico a todos los permisos:

~~~
chmod 755 salud.sh
~~~

Siga los siguientes pasos:

1. Cree un archivo llamado `saludo.service` en el directorio `/etc/systemd/system` con el siguiente contenido:
~~~
[Unit]
Description=Servicio de saludo

[Service]
ExecStart=/ruta/a/saludo.sh
Restart=always

[Install]
WantedBy=multi-user.target
~~~

Reemplace `/ruta/a/saludo.sh` con la ruta del archivo `saludo.sh` en su sistema.

2. Guarde el archivo y cierre el editor.

3. Ejecute el siguiente comando para recargar los archivos de configuración de systemd:

~~~
sudo systemctl daemon-reload
~~~

4. Ejecute el siguiente comando para habilitar el servicio de saludo en el arranque:
~~~
sudo systemctl enable saludo.service
~~~

5. Ejecute el siguiente comando para iniciar el servicio de saludo:

~~~
sudo systemctl start saludo.service
~~~

>Ahora, el archivo `saludo.sh` se ejecutará automáticamente en cada inicio del sistema. Puede verificar el estado del servicio con el siguiente comando:
