# Proyecto Comisión 23046

Este es el README del proyecto Comisión 23046, el cual es una aplicación web desarrollada utilizando tecnologías frontend y backend. El proyecto utiliza JavaScript, HTML, CSS, Bootstrap en el frontend, y Java con NetBeans como backend, junto con una base de datos MySQL.

## Descripción

El proyecto Comisión 23046 es una aplicación web diseñada para ver los oradores de una conferencia. La aplicación ha sido desarrollada utilizando una arquitectura cliente-servidor, donde el frontend se encarga de la interfaz de usuario y el backend maneja la lógica del negocio y la comunicación con la base de datos.

## Requisitos previos

Asegúrate de tener los siguientes componentes instalados antes de ejecutar el proyecto:

- Java Development Kit (JDK)
- NetBeans IDE
- Un servidor de aplicaciones compatible (Glassfish)
- Base de datos MySQL
- Navegador web

## Instalación

Sigue los pasos a continuación para configurar y ejecutar el proyecto en tu máquina local:

1. Clona o descarga el repositorio del proyecto desde https://github.com/mauriander/frontend23046d1

2. Abre NetBeans IDE y selecciona "Open Project". Navega hasta la ubicación donde descargaste el proyecto y ábrelo.

3. Configura el servidor de aplicaciones en NetBeans para ejecutar el proyecto. Selecciona "Services" en la barra de herramientas, haz clic derecho en "Servers" y elige "Add Server". Sigue las instrucciones para agregar tu servidor de aplicaciones.

4. Abre la base de datos MySQL y crea una nueva base de datos llamada "oradores".

5. Importa el archivo SQL provisto llamado "oradores.sql" en la base de datos "oradores". Este archivo contiene la estructura de la tabla y algunos datos de ejemplo.

6. En NetBeans, ve al archivo de configuración de la base de datos ubicado en `src/main/resources/database.properties`. Actualiza la configuración con los detalles de tu base de datos MySQL (por ejemplo, URL, nombre de usuario y contraseña).

7. Ejecuta el proyecto en NetBeans. Esto compilará el código y desplegará la aplicación en el servidor de aplicaciones configurado.

8. Abre un navegador web y accede a la siguiente URL: `http://localhost:puerto/Comision23046` (reemplaza "puerto" con el número de puerto configurado en tu servidor de aplicaciones).

9. ¡Ahora deberías poder ver y utilizar la aplicación Comision 23046 en tu navegador!

## Visualización de datos de oradores

La aplicación Comisión 23046 ahora incluye una sección donde se muestran los datos de los oradores de la conferencia. Estos datos se obtienen de la base de datos MySQL. Para acceder a la sección de oradores, sigue estos pasos:

1. Abre la aplicación Navegador en tu navegador.

2. Navega hasta la sección de "Oradores" o "Conferencistas" en la interfaz de usuario.

3. En esta sección, se mostrará una lista de los oradores de la conferencia junto con su información relevante, como nombre, biografía, foto, etc.

4. Puedes navegar a través de la lista de oradores y ver los detalles de cada uno.



- El archivo `pom.xml` es el archivo de configuración de Maven utilizado para gestionar las dependencias y la construcción del proyecto.

## Contribución

Si deseas contribuir al proyecto Comisión 23046, sigue estos pasos:

1. Haz un fork del repositorio en GitHub.

2. Clona tu repositorio fork a tu máquina local.

3. Crea una rama (`git checkout -b feature/nueva-caracteristica`) para trabajar en tu nueva característica.

4. Realiza los cambios y commits en tu rama.

5. Envía tus cambios al repositorio remoto (`git push origin feature/nueva-caracteristica`).

6. Abre una solicitud de extracción (pull request) en GitHub.

7. Espera la revisión y aprobación de tus cambios por parte de los colaboradores del proyecto.

## Contacto

Si tienes alguna pregunta o comentario sobre el proyecto Comisión 23046, no dudes en ponerte en contacto con nosotros. Puedes enviarnos un correo electrónico a maurianderit@gmail.com


