# RetailPro — Análisis de ventas de productos tecnológicos

## 1. Descripción del proyecto

RetailPro es un proyecto académico de análisis de datos orientado al estudio de las ventas de una empresa ficticia dedicada a la comercialización de productos tecnológicos.

El objetivo es utilizar SQL para organizar información comercial, realizar consultas y obtener indicadores que permitan analizar la facturación, los productos vendidos y el comportamiento de los clientes.

## 2. Objetivos

- Crear y organizar una base de datos de ventas.
- Consultar información de clientes, productos, categorías y ventas.
- Identificar los productos con mayor facturación y cantidad de unidades vendidas.
- Analizar los resultados mediante consultas SQL.
- Relacionar información de diferentes tablas utilizando JOIN.
- Obtener información útil para apoyar la toma de decisiones comerciales.

## 3. Herramientas utilizadas

- **SQL Server:** sistema de gestión de bases de datos.
- **SQL:** lenguaje utilizado para crear tablas, consultar datos y relacionar información.
- **SQL Server Management Studio (SSMS):** entorno para ejecutar y administrar los scripts SQL.
- **GitHub:** plataforma utilizada para almacenar y documentar el proyecto.
- **Inteligencia artificial:** herramienta de apoyo para elaborar y mejorar la documentación y analizar consultas SQL.

## 4. Estructura del repositorio

- `modulo-03/ventas_tech_db.sql`: crea las tablas principales de la base de datos e incorpora datos de ejemplo.
- `modulo-04/m4_consultas_negocio.sql`: contiene consultas para analizar la facturación mensual, los productos con mayores ventas, los clientes y otros indicadores comerciales.
- `modulo-05/m5_consultas_joins.sql`: incluye consultas que relacionan tablas mediante `JOIN`, permiten identificar clientes y productos sin ventas y comparar períodos.
- `README.md`: documentación general del proyecto e instrucciones de ejecución.

## 5. Cómo ejecutar los scripts SQL

### Requisitos previos

- Tener instalado SQL Server.
- Tener instalado SQL Server Management Studio (SSMS).
- Contar con acceso a una instancia de SQL Server.

### Procedimiento

1. Descargar o clonar este repositorio de GitHub.
2. Abrir SSMS y conectarse a una instancia de SQL Server.
3. Seleccionar o crear una base de datos de trabajo, según corresponda. Antes de ejecutar el primer script, comprobar si este contiene instrucciones para seleccionar o crear la base de datos.
4. Abrir `modulo-03/ventas_tech_db.sql` y ejecutar el script para crear las tablas e insertar los datos de ejemplo.
5. Verificar que las tablas y los datos se hayan creado correctamente.
6. Abrir y ejecutar `modulo-04/m4_consultas_negocio.sql` para realizar los análisis comerciales.
7. Abrir y ejecutar `modulo-05/m5_consultas_joins.sql` para consultar información relacionada entre las distintas tablas.

**Importante:** ejecutar primero el script del módulo 3, ya que los scripts posteriores necesitan que las tablas y los datos existan. Si se ejecuta nuevamente un script que elimina y recrea tablas, los datos anteriores de esas tablas pueden perderse. Por eso, conviene revisar las instrucciones antes de repetir la ejecución.

## 6. Flujo de trabajo del proyecto

El proyecto se organiza en tres etapas principales:

1. **Creación de la base de datos:** se preparan las tablas y se incorporan datos de ejemplo.
2. **Análisis del negocio:** se ejecutan consultas para obtener información sobre facturación, productos y clientes.
3. **Integración de información:** se utilizan relaciones entre tablas para ampliar el análisis y detectar registros sin ventas o comparar períodos.

Este orden permite pasar desde la organización de los datos hasta la obtención de información útil para el análisis comercial.

## 7. Resultados de ejemplo

A partir del conjunto de datos utilizado en el proyecto, se identificaron los siguientes resultados:

- **Facturación total:** $6.444.
- **Producto con mayor facturación:** el producto identificado con el ID 1, con $3.600 en ventas.
- **Producto con mayor cantidad de unidades vendidas:** el producto identificado con el ID 2, con 13 unidades.
- **Cliente con mayor gasto identificado:** el cliente con el ID 1, con $2.640 en compras.

Estos resultados corresponden a los datos de ejemplo disponibles en la base de datos. No deben interpretarse como resultados representativos de una empresa real.

## 8. Alcance y limitaciones

Los resultados dependen de la cantidad, la calidad y el período de los datos disponibles.

La facturación calculada a partir de la cantidad y el precio unitario representa ingresos por ventas, no ganancias, ya que no se descuentan costos ni gastos.

Además, la cantidad de filas de una consulta no necesariamente representa la cantidad de pedidos únicos. Para calcular pedidos únicos se necesita un identificador de pedido y una consulta adecuada para contarlos.

Los datos de ejemplo corresponden a un período limitado. Por eso, no permiten identificar una tendencia temporal confiable ni establecer conclusiones sobre la evolución de las ventas a largo plazo.

## 9. Uso de inteligencia artificial

La inteligencia artificial se utilizó como apoyo para elaborar y mejorar la documentación del proyecto y como herramienta de asistencia para trabajar con consultas SQL.

Las propuestas generadas fueron revisadas para adecuarlas al objetivo del proyecto. Los resultados deben contrastarse con la información almacenada en la base de datos y con la ejecución de los scripts.

## 10. Estado del proyecto

Proyecto académico en desarrollo, orientado a la práctica de SQL, la consulta de datos y el análisis de información comercial.


