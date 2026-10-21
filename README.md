# RetailPro — Análisis de ventas de productos tecnológicos

## Descripción del proyecto

RetailPro es un proyecto de análisis de datos orientado al estudio de las ventas de una empresa ficticia dedicada a la comercialización de productos tecnológicos.

El objetivo es utilizar SQL para organizar información comercial, realizar consultas y obtener indicadores que permitan analizar la facturación, los productos vendidos y el comportamiento de los clientes.

## Objetivos

- Crear y organizar una base de datos de ventas.
- Consultar información de clientes, productos, categorías y ventas.
- Identificar los productos con mayor facturación y cantidad de unidades vendidas.
- Analizar los resultados mediante consultas SQL.
- Obtener información útil para apoyar la toma de decisiones comerciales.

## Herramientas utilizadas

- **SQL Server:** sistema de gestión de bases de datos.
- **SQL:** lenguaje utilizado para crear tablas, consultar datos y relacionar información.
- **SQL Server Management Studio (SSMS):** entorno para ejecutar y administrar los scripts SQL.
- **GitHub:** plataforma utilizada para almacenar y documentar el proyecto.

## Estructura del repositorio

- `modulo-03/ventas_tech_db.sql`: crea las tablas principales de la base de datos e incorpora datos de ejemplo.
- `modulo-04/m4_consultas_negocio.sql`: contiene consultas para analizar la facturación mensual, los productos más vendidos, los clientes y otros indicadores comerciales.
- `modulo-05/m5_consultas_joins.sql`: incluye consultas que relacionan tablas mediante `JOIN` y permiten identificar clientes y productos sin ventas, entre otros análisis.
- `README.md`: documentación general del proyecto e instrucciones de ejecución.

## Cómo ejecutar los scripts SQL

1. Instalar SQL Server y SQL Server Management Studio (SSMS), si todavía no están instalados.
2. Abrir SSMS y conectarse a una instancia de SQL Server.
3. Descargar o clonar este repositorio de GitHub.
4. Abrir el archivo `modulo-03/ventas_tech_db.sql` y ejecutar el script para crear las tablas e insertar los datos de ejemplo.
5. Abrir y ejecutar `modulo-04/m4_consultas_negocio.sql` para realizar los análisis comerciales.
6. Abrir y ejecutar `modulo-05/m5_consultas_joins.sql` para consultar información relacionada entre las distintas tablas.

**Importante:** ejecutar primero el script del módulo 3, ya que los scripts posteriores necesitan que las tablas y los datos existan en la base de datos. Revisar también las instrucciones del script si es necesario seleccionar una base de datos específica.

## Alcance y consideraciones

Los resultados dependen de los datos disponibles en la base de datos. Si el conjunto de datos contiene pocas ventas o información de un período limitado, las conclusiones deben interpretarse teniendo en cuenta esas limitaciones.

La facturación calculada a partir de la cantidad y el precio unitario representa ingresos por ventas, no ganancias, ya que no se descuentan costos ni gastos.

Además, la cantidad de filas de una consulta no necesariamente representa la cantidad de pedidos únicos. Para realizar análisis temporales confiables, es necesario contar con datos de diferentes períodos.

## Uso de inteligencia artificial

La inteligencia artificial se utilizó como apoyo para elaborar y mejorar la documentación del proyecto. El contenido fue revisado y adaptado para que describa la estructura real del repositorio, las herramientas utilizadas y el procedimiento de ejecución de los scripts.

## Estado del proyecto

Proyecto académico en desarrollo, orientado a la práctica de SQL y al análisis de datos comerciales.
