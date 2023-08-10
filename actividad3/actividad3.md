# Instrucciones

Crear un archivo con extensión `.md` y copiar el texto a continuación. A continuación, convertiré el texto a formato Markdown (.md).

---

## Parte 1: Gestión de Usuarios

1. **Creación de Usuarios:** Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`.

    ```bash
        useradd usuario1
    ```
    ```bash
        useradd usuario2
    ```
    ```bash
        useradd usuario3
    ```
   
2. **Asignación de Contraseñas:** Establece una nueva contraseña para cada usuario creado.

    ```bash
        passwd usuario1
    ```
    Salida:
    ```bash
        Changing password for user usuario1.
        New password: ****
        Retype new password: ****
        passwd: password updated successfully
    ```
    ```bash
        passwd usuario2
    ```

    Salida:

    ```bash
        Changing password for user usuario2.
        New password: ****
        Retype new password: ****
        passwd: password updated successfully
    ```
    ```bash
        passwd usuario3
    ```
    Salida:
    ```bash
        Changing password for user usuario3.
        New password: ****
        Retype new password: **** 
        passwd: password updated successfully
    ```

   
3. **Información de Usuarios:** Muestra la información de `usuario1` usando el comando `id`.

    ```bash
        id usuario1
    ```
    Salida:
    ```bash
        uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)
    ```

   
4. **Eliminación de Usuarios:** Elimina `usuario3`, pero conserva su directorio principal.

    ```bash
        userdel usuario3
    ```

   
## Parte 2: Gestión de Grupos

1. **Creación de Grupos:** Crea dos grupos llamados `grupo1` y `grupo2`.

    ```bash
        groupadd grupo1
        groupadd grupo2
    ```

2. **Agregar Usuarios a Grupos:** Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.
    ```bash
        usermod -aG grupo1 usuario1
        usermod -aG grupo2 usuario2
    ```
   
3. **Verificar Membresía:** Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.
    ```bash
        groups usuario1
    ```
    Salida:
    ```bash
        usuario1 : usuario1 grupo1
    ```

    ```bash
       groups usuario2
    ```
    Salida:
    ```bash
        usuario2 : usuario2 grupo2
    ```
   
4. **Eliminar Grupo:** Elimina `grupo2`.
    ```bash
        groupdel grupo2
    ```
   
## Parte 3: Gestión de Permisos

1. **Creación de Archivos y Directorios:**
   - Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
   
   - Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`
   
    ```bash
        touch ~/archivo1.txt
        echo "Contenido del archivo 1" > ~/archivo1.txt
        mkdir ~/directorio1
        touch ~/directorio1/archivo2.txt
    ```

   
2. **Verificar Permisos:** Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

    ```bash
      ls -l ~/archivo1.txt
    ```
    Salida
    ```bash
      -rw-r--r-- 1 usuario1 usuario1 24 Aug  9 15:00 /home/usuario1/archivo1.txt
    ```

    ```bash
      ls -ld ~/directorio1
    ```
    Salida
    ```bash
    drwxr-xr-x 2 usuario1 usuario1 4096 Aug  9 15:02 /home/usuario1/directorio1
    ```
   
3. **Modificar Permisos usando `chmod` con Modo Numérico:** Cambia los permisos del `archivo1.txt` para que solo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.
   
    ```bash
        chmod 640 ~/archivo1.txt
    ```

4. **Modificar Permisos usando `chmod` con Modo Simbólico:** Agrega permiso de ejecución al propietario del `archivo2.txt`.

    ```bash
        chmod u+x ~/directorio1/archivo2.txt
    ```
   
5. **Cambiar el Grupo Propietario:** Cambia el grupo propietario de `archivo2.txt` a `grupo1`.

    ```bash
        sudo chown :grupo1 ~/directorio1/archivo2.txt
    ```

   
6. **Configurar Permisos de Directorio:** Cambia los permisos del `directorio1` para que solo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.
   
    ```bash
        chmod 750 ~/directorio1
    ```

7. **Comprobación de Acceso:** Intenta acceder a `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

    ```bash
        cat ~/archivo1.txt
    ```
    Salida
    ```bash
        Contenido del archivo 1
    ```

    ```bash
        cat ~/directorio1/archivo2.txt
    ```
    Salida
    ```bash
        cat: /home/usuario1/directorio1/archivo2.txt: Permission denied
    ```
   
8. **Verificación Final:** Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.

    ```bash
        ls -l ~/archivo1.txt
    ```
    Salida
    ```bash
        -rw-r----- 1 usuario1 usuario1 24 Aug  9 15:10 /home/usuario1/archivo1.txt
    ```

     ```bash
        $ ls -ld ~/directorio1
    ```
    Salida
    ```bash
        drwxr-x--- 2 usuario1 grupo1 4096 Aug  9 15:11 /home/usuario1/directorio1
    ```
