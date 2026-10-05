--CONSULTA 1
SELECT ventas.fecha_venta AS fecha, 
       ventas.cantidad, 
       ventas.precio_unitario,
       ventas.cantidad * ventas.precio_unitario AS total_venta,
       clientes.nombre AS nombre_cliente,
       clientes.id_cliente,
       productos.nombre_producto,
       categorias.nombre_categoria AS categoria
FROM ventas
INNER JOIN clientes 
       ON ventas.id_cliente = clientes.id_cliente
INNER JOIN productos
       ON ventas.id_producto = productos.id_producto
INNER JOIN categorias
       ON productos.id_categoria = categorias.id_categoria;

--CONSULTA 2
SELECT clientes.nombre,
       clientes.email,
       clientes.fecha_registro
FROM clientes
LEFT JOIN ventas
       ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.id_venta IS NULL;

--CONSULTA 3
SELECT productos.nombre_producto,
       productos.precio,
       categorias.nombre_categoria AS categoria
FROM productos
LEFT JOIN ventas
       ON productos.id_producto = ventas.id_producto
LEFT JOIN categorias
       ON productos.id_categoria = categorias.id_categoria
WHERE ventas.id_venta IS NULL;


--CONSULTA 4
SELECT canal,SUM(total) AS total FROM
(SELECT fecha_venta, 
cantidad * precio_unitario AS total,
'Periodo 1' AS canal
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-05' AND '2024-03-10'

UNION ALL

SELECT fecha_venta,
cantidad * precio_unitario AS total,
'Periodo 2' AS canal
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-11' AND '2024-03-15') AS resultados
GROUP BY canal;

