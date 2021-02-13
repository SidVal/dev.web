--LABORATORIO II - GUIA EJERCICIOS 5
--Consultas Sumarias
--Como contar solo articulos diferentes vendidos en caso de que se repitan

USE libreria

--1) Se quiere saber la cantidad de clientes que hay en la empresa.

SELECT COUNT(*) as 'Cantidad de Clientes'
FROM clientes


--2) Se quiere saber qué cantidad de vendedores hay en la empresa

SELECT COUNT(*) as 'Cantidad de Vendedores'
FROM vendedores 


--3) Se quiere saber el promedio de la cantidad total de artículos vendidos.

SELECT AVG(cantidad) as 'Promedio Cantidad'
FROM detalle_facturas 
 
--4) Se quiere saber la cantidad de ventas que hizo el vendedor de código 3.SELECT count(*) as 'Cantidad de Ventas' 
FROM facturas F, vendedores V
WHERE F.cod_Vendedor = V.cod_Vendedor
and V.cod_Vendedor = 3


--5) ¿Cuál fue la fecha de la primera y última venta que se realizó en este negocio?.
--Presentado de forma horizontal


SELECT min(fecha) as 'Primera Fecha', 
max(fecha) as 'Ultima Fecha'
FROM facturas F

--Presentado de forma vertical (registros)

SELECT min(fecha) as 'Fecha', 
'Primera' orden
FROM facturas F
UNION
SELECT max(fecha), 
'Ultima' --es la orden, no es necesario aclararlo
FROM facturas F

--6) Se quiere saber cuál fue la máxima y la mínima cantidad que se vendió para el artículo 8
SELECT min(cantidad) as 'Cantidad', 'Minima' orden
FROM detalle_Facturas D
WHERE cod_Articulo = 8
UNION
SELECT max(cantidad) as 'Cantidad', 'Maxima' orden
FROM detalle_Facturas D
WHERE cod_Articulo = 8


--7) Mostrar la siguiente información respecto a la factura nro.: 450: 
--cantidad total de unidades vendidas, la cantidad de artículos diferentes vendidos y el importe total.

SELECT sum(D.cantidad) as 'Cantidad Total', 
count(*) as 'Cantidad de Articulos', 
sum(D.pre_unitario*D.cantidad) as 'Importe Total'
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura
and F.nro_factura = 450

--8) ¿Cuál fue el cantidad total de unidades vendidas, importe total y 
--el importe promedio para vendedores cuyo nombres comienzan con letras que van de la “d” a la “l”?

SELECT sum(D.cantidad) as 'Cantidad Total', 
sum(D.pre_unitario*D.cantidad) as 'Importe Total',
avg(D.pre_unitario*D.cantidad) as 'Importe Promedio'
FROM facturas F, detalle_facturas D, vendedores V
WHERE F.nro_Factura = D.nro_factura
AND V.cod_Vendedor = F.cod_Vendedor
AND V.nom_Vendedor like '[d-l]%'

--9) Obtener el promedio y el monto vendido de toda la facturación de este negocio. 
--Mostrar además la cantidad de unidades vendidas y el promedio de las unidades vendidas.

SELECT avg(D.pre_unitario*D.cantidad) as 'Promedio de Facturacion',
sum(D.pre_unitario*D.cantidad) as 'Importe Total',
count(*) as 'Cantidad de Articulos',
AVG(cantidad) as 'Promedio de Unidades' 
FROM detalle_facturas D






--10) Se quiere saber el importe total vendido, el promedio del importe vendido y 
--la cantidad total de artículos vendidos para el cliente Roque Paez.


SELECT sum(D.pre_unitario*D.cantidad) as 'Importe Total Vendido',
avg(D.pre_unitario*D.cantidad) as 'Promedio del Importe', 
count(*) as 'Cantidad de Articulos Vendidos'
FROM facturas F, detalle_facturas D, clientes C
WHERE F.nro_Factura = D.nro_factura
AND C.cod_Cliente = F.cod_cliente 
AND C.nom_Cliente like 'Roque'
AND C.ape_Cliente like 'Paez'



--11) Mostrar la fecha de la primera venta, la cantidad total vendida y 
--el importe total vendido para los artículos que empiecen con “C”.

SELECT min(F.fecha) as 'Fecha de Primera Venta',
avg(D.cantidad) 'Promedio de cantidad', 
sum(D.pre_unitario*D.cantidad) as 'Importe Total'
FROM facturas F, detalle_facturas D, articulos A
WHERE F.nro_Factura = D.nro_factura
AND A.cod_articulo = D.cod_articulo
AND A.descripcion like 'C%'

--12) Se quiere saber la cantidad total de artículos vendidos y 
--el importe total vendido para el periodo del 15/06/2008 al 15/06/2011.

SELECT SUM(D.cantidad) 'Cantidad de Articulos', --cantidad total!
sum(D.pre_unitario*D.cantidad) as 'Importe Total'
FROM facturas F, detalle_facturas D, articulos A
WHERE F.nro_Factura = D.nro_factura
AND A.cod_articulo = D.cod_articulo
AND F.fecha BETWEEN '15/06/2008' AND '15/06/2011'

--13) Se quiere saber la cantidad de veces y la última vez 
--que vino el cliente de apellido Abarca y cuánto gastó en total.

SELECT count(D.cantidad) 'Cantidad de veces', --con codigo de cliente anda igual
max(F.fecha) as 'Ultima Fecha Registrada',
sum(D.pre_unitario*D.cantidad) as 'Importe Total'
FROM facturas F, detalle_facturas D, clientes C
WHERE F.nro_Factura = D.nro_factura
AND C.cod_Cliente = F.cod_cliente 
AND C.ape_Cliente like 'Abarca'

--14) Mostrar el importe total y el promedio del importe 
--para los clientes cuya dirección de mail es conocida.

SELECT sum(D.pre_unitario*D.cantidad) as 'Importe Total',
avg(D.pre_unitario*D.cantidad) as 'Promedio del Importe'
FROM facturas F, detalle_facturas D, clientes C
WHERE F.nro_Factura = D.nro_factura
AND C.cod_Cliente = F.cod_cliente 
AND C.[e-mail] is not null



--15) Obtener la siguiente información: el importe total vendido y el importe promedio vendido 
--para números de factura que no sean los siguientes: 13, 5, 17, 33, 24.

SELECT sum(D.pre_unitario*D.cantidad) as 'Importe Total',
avg(D.pre_unitario*D.cantidad) as 'Promedio del Importe'
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura --JOIN
AND F.nro_Factura NOT IN(13,5,17,33,24)

--16) El encargado del negocio quiere saber cuánto fue la facturación del año pasado. 
--Por otro lado cuánto es la facturación del mes pasado, la de este mes y la de hoy.


SELECT sum(D.pre_unitario*D.cantidad) as 'Facturacion Total', 
'Año Pasado' Periodo
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura
AND year(F.fecha) = year(getdate())-1
UNION
SELECT sum(D.pre_unitario*D.cantidad) as 'Facturacion Total', 
'Mes Pasado'
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura
AND month(F.fecha) = month(getdate())-1
AND year(F.fecha) = year(GETDATE())
UNION
SELECT sum(D.pre_unitario*D.cantidad) as 'Facturacion Total', 
'Mes Actual'
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura
AND month(F.fecha) = month(GETDATE())
AND year(F.fecha) = year(GETDATE())
UNION
SELECT sum(D.pre_unitario*D.cantidad) as 'Facturacion Total', 'Hoy'
FROM facturas F, detalle_facturas D
WHERE F.nro_Factura = D.nro_factura
AND F.fecha = GETDATE()
ORDER BY 'Facturacion Total' desc

17) Se quiere saber la cantidad de ventas, la cantidad total vendida y el importe 
promedio vendido para una factura determinada por ejemplo la nro. 512.

SELECT count(*) as 'Cantidad de Ventas', 
sum(cantidad) as 'Cantidad Total Vendida',
avg(D.pre_unitario * D.cantidad) as 'Importe Promedio'
FROM facturas F, detalle_Facturas D
WHERE F.nro_factura = D.nro_Factura
AND F.nro_Factura = 512

