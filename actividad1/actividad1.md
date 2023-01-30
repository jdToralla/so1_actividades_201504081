# ACTIVIDAD 1

Investigar sobre los siguientes conceptos de Sistemas Operativos 1

# Tipos de Kernel y sus diferencias

## 1. Kernel monolítico

Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

Estos sistemas tienen un núcleo grande y complejo, que engloba todos los servicios del sistema. Está programado de forma no modular, y tiene un rendimiento mayor que un micronúcleo. Sin embargo, cualquier cambio a realizar en cualquier servicio requiere la recompilación del núcleo y el reinicio del sistema para aplicar los nuevos cambios.

## 2. Microkernel

El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos.

Son núcleos de pequeño tamaño que fueron compilados sólo con las necesidades más básicas del sistema operativo. El resto de funcionalidades son añadidas mediante la adición de módulos externos al núcleo, lo que les proporciona flexibilidad y facilidad de ampliación. Son mas seguros que los Monolíticos.

## 3. Kernel híbrido

La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X. Estas arquitecturas son utilizadas dentro de las computadoras por medio de los sistemas operativos.

# User vs Kernel mode

**Modo de usuario:** Cuando se inicia un programa en un sistema operativo, digamos Windows, se inicia el programa en modo de usuario. Y cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso).

Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema.

**Modo Kernel:** El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción entre el software y el hardware de la aplicación.

Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario.

|        Criterios     |Modo de núcleo                         | Modo de usuario  |
|----------------------|-------------------------------|-----------------------------|
| Modo Kernel vs Modo Usuario|En modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema.|     En modo usuario, el programa de aplicación se ejecuta y se inicia.|
|Interrupciones |En el modo Kernel, todo el sistema operativo puede dejar de funcionar si se produce una interrupción |En el modo de usuario, un solo proceso falla si ocurre una interrupción.|
|Modos |El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema.  |El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo.|
|Espacio de direcciones virtuales  |En modo kernel, todos los procesos comparten un único espacio de direcciones virtuales.  |En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado.  |
|Nivel de privilegio |En el modo kernel, las aplicaciones tienen más privilegios que en el modo usuario. | Mientras está en modo usuario, las aplicaciones tienen menos privilegios.|
|Restricciones|Como el modo kernel puede acceder tanto a los programas del usuario como a los programas del kernel, no hay restricciones.  |Mientras que el modo de usuario necesita acceder a los programas del kernel, ya que no puede acceder a ellos directamente. |
