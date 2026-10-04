SELECT SUM(cantidad * precio_unitario) AS total_facturado FROM Ventas
SELECT COUNT(*) AS cantidad_pedidos FROM Ventas
SELECT AVG(cantidad * precio_unitario) AS ticket_promedio FROM Ventas

SELECT TOP 5 id_producto,SUM(Cantidad) AS unidades_vendidas , SUM(cantidad * precio_unitario) AS total_facturado FROM Ventas
GROUP BY id_producto 
ORDER BY SUM(cantidad * precio_unitario) DESC;

SELECT id_cliente, COUNT(*) AS cantidad_pedidos,
SUM(Cantidad) AS unidades_vendidas,
SUM(cantidad * precio_unitario) AS total_gastado FROM Ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1

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
GROUP BY MONTH(fecha_venta)) AS meses


-- El cliente 1 es el que mas ha gastado con un total de $2640.00
-- Los clientes 2 y 3 son los que mas unidades compraron durante este periodo
-- El producto 2 es el que mas unidades vendió,con 13 unidades, pero tambien fue uno de los que menos facturó,con un total de $364.00

