# Mi Portafolio Personal

## Descripción

Este proyecto consiste en un sitio web de portafolio personal desarrollado
como parte de la asignatura Desarrollo Web II.

El sitio permite presentar información personal, proyectos, habilidades,
experiencia y un formulario de contacto.

## Tecnologías utilizadas

- HTML5
- CSS3
- Bootstrap 5
- Java
- JavaServer Pages (JSP)
- MySQL
- JDBC
- Maven
- Git
- GitHub
- Apache Tomcat

## Características

- Diseño responsive.
- Colores negro, blanco y dorado.
- Navegación entre diferentes páginas.
- Tarjetas de proyectos.
- Sección de habilidades.
- Sección de experiencia.
- Formulario de contacto.
- Validación HTML5.
- Conexión JSP con MySQL.
- Proyectos cargados dinámicamente desde la base de datos.
- Información de contacto almacenada en MySQL.

## Estructura

El proyecto está organizado en páginas JSP, archivos CSS,
clases Java y una base de datos MySQL.

## Base de datos

La base de datos utilizada se llama:

portafolio

Contiene las tablas:

- proyectos
- contactos

El archivo `base_datos.sql` contiene las instrucciones necesarias
para crear la base de datos y las tablas.

## Diseño

Se eligió una combinación de colores negro, blanco y dorado
para crear una apariencia profesional y elegante.

El color negro se utiliza principalmente para encabezados y fondos,
el blanco para mantener claridad en el contenido y el dorado
para destacar botones, títulos y elementos importantes.

## Diseño responsive

Bootstrap y CSS Media Queries fueron utilizados para permitir
que el sitio se adapte a computadoras, tablets y teléfonos móviles.

## Proceso de desarrollo

Primero se creó la estructura HTML utilizando elementos semánticos.

Después se desarrolló una hoja de estilos CSS con un CSS Reset
y un diseño basado en los colores negro, blanco y dorado.

Posteriormente se incorporó Bootstrap para utilizar componentes
responsive, tarjetas, botones, formularios y el sistema de columnas.

Después se desarrolló el formulario de contacto utilizando
validaciones HTML5.

Finalmente se implementó JSP para generar contenido dinámico
y se realizó la conexión con MySQL utilizando JDBC.

## Problemas encontrados y soluciones

### Problema: conexión con MySQL

Uno de los principales problemas durante el desarrollo puede ser
la configuración de las credenciales de MySQL.

### Solución

Se revisaron el usuario, contraseña, puerto y nombre de la base
de datos utilizados en la clase Conexion.java.

### Problema: diseño en dispositivos pequeños

El contenido podía ocupar demasiado espacio en pantallas pequeñas.

### Solución

Se utilizaron componentes responsive de Bootstrap y Media Queries
en CSS.

## Control de versiones

Git fue utilizado para controlar las diferentes versiones del proyecto.

GitHub se utilizó como repositorio remoto para almacenar el código
fuente y facilitar la entrega del proyecto.

## Autor

Roberto Exequel Ibarra Martini

## Asignatura

Desarrollo Web II

## Año

2026