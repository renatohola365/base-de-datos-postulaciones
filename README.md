# Sistema de Postulaciones USM - Base de Datos SQL

Este repositorio contiene la estructura completa de la base de datos y un conjunto de consultas SQL desarrolladas para gestionar y analizar el sistema de postulaciones de iniciativas y proyectos de la Universidad Técnica Federico Santa María (USM).

## Contenido del Repositorio

* **`ct_usm_postulaciones.sql`**: Script de creación de tablas, relaciones (claves primarias y foráneas), e inserción de datos iniciales para entidades como empresas, iniciativas, estudiantes/profesores, sedes y estados de postulación.
* **`consultas_p5.sql`**: Conjunto de consultas SQL para el análisis de datos, incluyendo reportes de presupuestos, filtrado por sede/región, estadísticas de integrantes por proyecto y evaluación de requisitos.

## Tecnologías Utilizadas

* **Gestor de Base de Datos**: MySQL / MariaDB (phpMyAdmin)
* **Lenguaje**: SQL

## Uso
1. Importa el archivo `ct_usm_postulaciones.sql` en tu gestor MySQL (XAMPP / phpMyAdmin / MySQL Workbench) para construir la base de datos.
2. Ejecuta los scripts de `consultas_p5.sql` para consultar e interactuar con los datos.
