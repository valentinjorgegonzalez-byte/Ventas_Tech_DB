--CONSULTA 1
SELECT
      MONTH(fecha_venta) AS mes,
      SUM(cantidad * precio_unitario) AS total_facturado,
      COUNT(*) AS cantidad_pedidos,
      AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta);


--CONSULTA 2
SELECT TOP 5 id_producto,
       SUM(Cantidad) AS unidades_vendidas , 
       SUM(cantidad * precio_unitario) AS total_facturado 
FROM Ventas
GROUP BY id_producto 
ORDER BY SUM(cantidad * precio_unitario) DESC;


--CONSULTA 3
SELECT id_cliente,
       COUNT(*) AS cantidad_pedidos,
       SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1;


--CONSULTA 4
SELECT mes,
       total_mensual,
CASE 
       WHEN total_mensual > promedio_total THEN 'Por encima'
       WHEN total_mensual < promedio_total THEN 'Por debajo'
END AS resultados
FROM (
SELECT AVG(total_mensual) AS promedio_total FROM
(SELECT MONTH(fecha_venta) AS mes,
  SUM(cantidad * precio_unitario) AS total_mensual
FROM ventas
GROUP BY MONTH(fecha_venta))AS resultado ) AS promedio

CROSS JOIN 

(SELECT MONTH(fecha_venta) AS mes,
  SUM(cantidad * precio_unitario) AS total_mensual
FROM ventas
GROUP BY MONTH(fecha_venta)) AS meses;


-- El cliente 1 es el que más ha gastado, con un total de $2640.00.
-- El producto 1 fue el que más facturó, con $3600.00, a pesar de vender solo 3 unidades.
-- El producto 2 es el que más unidades vendió, con 13 unidades, pero también fue uno de los que menos facturó, con un total de $364.00.

