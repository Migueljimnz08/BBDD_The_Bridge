# Proyecto grupal SQL

Este proyecto es una landing page para una cafetería ficticia, desarrollada como ejercicio del bootcamp de desarrollo web. El objetivo principal fue practicar la maquetación con HTML5 y CSS3, aplicando buenas prácticas de estructura semántica, estilos responsive y organización de archivos.

Este proyecto contiene el diseño y la implementación de una base de datos relacional para gestionar información académica de alumnos, profesores, cursos, verticales y evaluaciones de proyectos.

## 🖥️ Tecnologías usadas

- SQL para el diseño y carga de las tablas.
- Docker desktop para contenedores de PostgreSQL y pgAdmin4.
- pgAdmin4 como interfaz gráfica para administración de la base de datos.
- Github para el control de versiones.
- PostgreSQL como sistema de gestión de base de datos.

## 🎯 Objetivo del proyecto

- Crear una estructura que represente adecuadamente el los datos académicos: alumnos, profesores, cursos, verticales, proyectos y evaluaciones.
- Usar claves primarias y foráneas para asegurar la coherencia de los datos y las relaciones entre las tablas.
- Permitir registrar y consultar notas de los alumnos por proyecto, curso y vertical de forma estructurada.
- Mediante scripts SQL, poblar la base de datos para pruebas y visualización.
- Integrar PostgreSQL con Docker y pgAdmin4 para ofrecer un entorno de desarrollo portable, reproducible y profesional.

## 📸 Capturas de pantalla

*(Aquí puedes incluir capturas si las tienes. Por ejemplo:)*

![Diagrama modelo ER](assets\Trabajo_grupal_SQL.png)
![Diagrama lógico](assets\Modelo_Entidad_Relacion.PNG)

## 🚀 Cómo ejecutar el proyecto

1. Clonar el repositorio:

```
git clone [https://github.com/Migueljimnz08/BBDD_The_Bridge]
```

2. Crea una nueva base de datos (por ejemplo, evaluaciones).

3. Ejecuta el contenido del archivo proyecto.sql para crear las tablas y poblarlas con datos iniciales.

### 🌐 Proyecto desplegado

Puedes ver el proyecto online en:  

## 📚 Lecciones aprendidas

- Entendí mejor la diferencia entre `div` y las etiquetas semánticas (`section`, `article`, `main`, `header`, `footer`).
- Aprendí a usar Flexbox para centrar elementos y distribuir el contenido de forma flexible.
- Implementé media queries para adaptar el diseño a dispositivos móviles.
- Utilicé Google Fonts para personalizar la tipografía.
- Aprendí a organizar los archivos en carpetas y validar el HTML.

## 🔧 Funcionalidades futuras

- Crear una interfaz visual (por ejemplo, usando React, Vue o Django) para gestionar alumnos, profesores, cursos y evaluaciones sin depender solo de SQL o pgAdmin.
- Permitir login de profesores, alumnos o administradores con diferentes niveles de permisos para ver o modificar datos.
- Mostrar gráficas e informes automáticos con el rendimiento de los estudiantes por curso, vertical, campus o modalidad..
- Añadir tablas para registrar la asistencia de los alumnos, avances por proyecto, fechas de entregas o actividades adicionales.

## 📂 Estructura del proyecto

```
BBDD_THE_BRIDGE/
|--assets - imágenes y recursos
|--proyecto.sql - Script SQL para crear tablas e insertar datos
|--README.md - documentación

```

## 🧑💻 Autores

Jorge Alonso Conde.
Renan Muniz Bisteca.
Vincen Limones.
Miguel Ángel Jiménez Morante.