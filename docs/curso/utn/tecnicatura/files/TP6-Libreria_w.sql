use libreria_2015

-- 1 Por cada factura emitida mostrar la cantidad total de artículos vendidos (suma de las cantidades vendidas), la cantidad ítems que tiene cada factura en el detalle (cantidad de registros de detalles) y el Importe total.

SELECT SUM(D.pre_unitario*D.cantidad) 'Importe total',
SUM(D.cantidad) 'Cantidad Total Vendida',
COUNT(*) 'Cantidad de items',
F.nro_factura
FROM detalle_facturas D, facturas F
WHERE D.nro_factura=F.nro_factura
--AND D.nro_factura=450
GROUP BY F.nro_factura

select *
from detalle_facturas
where nro_factura = 450

-------------
--2) Se quiere saber en este negocio, cuánto se factura:
--a. Diariamente
--b. Mensualmente
--c. Anualmente

--a
select count(*)'Cantidad de facturas',f.fecha
from facturas F --no es necesario poner el detalle de fact
--where DF.nro_factura=F.nro_factura
GROUP By F.fecha --seria diariamente

--Para saber cuánto se factura
SELECT SUM(D.pre_unitario*D.cantidad) 'Importe total',f.fecha
FROM detalle_facturas D, facturas F
WHERE D.nro_factura=F.nro_factura
GROUP BY F.fecha

--b
SELECT SUM(D.pre_unitario*D.cantidad) 'Importe total',month(f.fecha)
FROM detalle_facturas D, facturas F
WHERE D.nro_factura=F.nro_factura
GROUP BY month(F.fecha)
ORDER BY 2

--c
SELECT SUM(D.pre_unitario*D.cantidad) 'Importe total',year(f.fecha)
FROM detalle_facturas D, facturas F
WHERE D.nro_factura=F.nro_factura
GROUP BY year(F.fecha)
ORDER BY 2

-- 3 Emitir un listado de la cantidad de facturas confeccionadas diariamente, correspondiente a los meses que no sean enero, julio ni diciembre. Ordene por la cantidad de facturas en forma descendente y fecha.

SELECT count(*) 'Cantidad de Facturas',f.fecha
FROM facturas F
WHERE month(f.fecha) not in (1,7,12)
GROUP BY F.fecha
ORDER BY 1 desc, 2 

-- 4 Mostrar la cantidad total de artículos vendidos, el importe total vendido y la fecha de la primer venta por cliente, para nombres de cliente que no empiecen con “p”.

SELECT SUM(D.pre_unitario*D.cantidad) 'Importe total',
MIN(f.fecha) 'Primer venta',
C.cod_cliente, C.ape_cliente, C.nom_cliente
FROM detalle_facturas D, facturas F, clientes C
WHERE D.nro_factura=F.nro_factura
AND C.cod_cliente = F.cod_cliente
AND C.nom_cliente not LIKE 'P%'
GROUP BY C.cod_cliente, C.ape_cliente, C.nom_cliente
ORDER BY 3

-- 5 Se quiere saber la cantidad y el importe promedio vendido por fecha y cliente, para códigos de vendedor superiores a 2. Ordene por fecha y cliente.




select * from clientes
select * from facturas
select * from detalle_facturas


