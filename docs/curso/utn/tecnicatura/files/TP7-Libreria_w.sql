use libreria_2015

-- 1 Se quiere saber la fecha de la primer venta, la cantidad total vendida y el importe total vendido por vendedor para los casos en que el promedio de la cantidad vendida sea inferior o igual a 56.

select v.nom_vendedor 'Nombre del Vendedor',
MIN(f.fecha) 'Primera Venta',
SUM(df.cantidad) 'Cantidad total Vendida',
SUM(df.pre_unitario*df.cantidad) 'Importe total',
AVG(df.cantidad) 'Promedio cantidad'
from facturas F, detalle_Facturas DF, vendedores v
where f.nro_factura = df.nro_factura
and v.cod_vendedor=f.cod_vendedor
group by v.cod_vendedor, v.nom_vendedor
having AVG(df.cantidad) <= 56
order by 2

--2 Se necesita un listado que informe sobre el monto m�ximo, m�nimo y total que gast� en esta librer�a cada cliente el a�o pasado pero solo donde el importe total gastado por esos clientes est� entre 300 y 800.

select --c.cod_cliente,
c.nom_cliente +space(2)+c.ape_cliente as 'Nombre y Apellido del Cliente',
MAX(df.pre_unitario*df.cantidad) 'Monto M�x',
MIN(df.pre_unitario*df.cantidad) 'Monto Min',
SUM(df.pre_unitario*df.cantidad) 'Gasto Total',
f.fecha 'Fecha'
from facturas F, detalle_Facturas DF, clientes C
where f.nro_factura = df.nro_factura
and c.cod_cliente = f.cod_cliente
and year(f.fecha)=year(getdate())-1
group by c.cod_cliente, c.nom_cliente, c.ape_cliente, f.fecha
having SUM(df.pre_unitario*df.cantidad) between 3000 and 9000
order by f.fecha


--3  Muestre la cantidad de art�culos (�tems) distintos vendidos (cantidad de registros en el detalle) diario por vendedor; para los casos en que esa cantidad de �tems sea 2 o m�s.

select distinct count(df.cod_articulo) 'Cantidad de Art Vendidos',
v.cod_vendedor, 
v.nom_vendedor,
day(f.fecha) 'Diario'
from facturas F, detalle_Facturas DF, vendedores V
where f.nro_factura = df.nro_factura
and v.cod_vendedor=f.cod_vendedor
group by v.cod_vendedor,v.nom_vendedor, f.fecha
having count(distinct df.cod_articulo) >= 2
order by day(f.fecha) desc, v.cod_vendedor asc

--4 Desde la administraci�n se solicita un reporte que muestre el precio promedio, el importe total y el promedio del importe vendido por art�culo que no comiencen con no comiencen con �c�, que su cantidad total vendida sea 100 o m�s o que ese importe total vendido sea superior a 700.

select a.cod_articulo 'Cod Art', a.descripcion 'Descripc',
AVG(df.pre_unitario) 'Precio Prom',
SUM(df.pre_unitario*df.cantidad) 'Importe Total',
AVG(df.pre_unitario*df.cantidad) 'Prom del Importe vendido por art'
from facturas F, detalle_Facturas DF, articulos A
where f.nro_factura = df.nro_factura
AND df.cod_articulo = a.cod_articulo
AND a.descripcion not like 'C%'
group by a.cod_articulo,df.pre_unitario,df.cantidad,a.descripcion
having SUM(df.cantidad) >= 100 
OR SUM(df.pre_unitario*df.cantidad) >700

--5 Muestre en un listado la cantidad total de art�culos vendidos, el importe total y la fecha de la primer y �ltima venta por cada cliente, para lo n�meros de factura que no sean los siguientes: 2, 12, 20, 17, 30 y que el promedio de la cantidad vendida oscile entre 2 y 6.

select c.cod_cliente 'Cod Cliente', a.cod_articulo 'Cod Art', a.descripcion 'Descripc',
SUM(df.cantidad) 'Cantidad total de Art',
MIN(f.fecha) 'Primer venta',
MAX(f.fecha) 'Ultima venta'
from facturas F, detalle_Facturas DF, articulos A, clientes C
where f.nro_factura = df.nro_factura
AND df.cod_articulo = a.cod_articulo
AND c.cod_cliente = f.cod_cliente
AND f.nro_factura not in (2,12,20,17,30)
group by c.cod_cliente, a.cod_articulo,df.pre_unitario,df.cantidad,a.descripcion
having AVG(df.cantidad) between 2 and 6

-- 6  Emitir un listado que muestre la cantidad total de art�culos vendidos, el importe total vendido y el promedio del importe vendido por vendedor y por cliente; para los casos en que el importe total vendido est� entre 900 y 7000 y para c�digos de cliente que oscilen entre 1 y 5.

select v.cod_vendedor 'Cod. Vendedor',
c.cod_cliente 'Cod. Cliente',
SUM(df.cantidad) 'Cant Total',
SUM(df.cantidad*df.pre_unitario) 'Importe total',
AVG(df.cantidad*df.pre_unitario) 'Prom del Importe'
from facturas F, detalle_Facturas DF, clientes C, vendedores V
where f.nro_factura = df.nro_factura
and c.cod_cliente = f.cod_cliente
and v.cod_vendedor = f.cod_vendedor
and c.cod_cliente between 1 and 5
group by v.cod_vendedor, c.cod_cliente
having SUM(df.cantidad*df.pre_unitario) between 900 and 7000

-- 7 Por cada factura emitida, se quiere saber el importe total y el promedio del importe, pero solo para las facturas donde se hayan vendido m�s de 50 unidades de art�culos en total y el importe total de la factura sea superior a 500. // da 66

select f.nro_factura 'Nro Fact',
SUM(DF.pre_unitario*DF.cantidad) 'Importe total',
AVG(DF.pre_unitario*DF.cantidad) 'Promedio del Importe',
count(df.cantidad) 'Cantidad'
from articulos a, detalle_facturas df, facturas f
where a.cod_articulo = df.cod_articulo
and f.nro_factura = df.nro_factura
group by f.nro_factura
having count(df.cantidad) >1 and SUM(DF.pre_unitario*DF.cantidad) > 500

-- 8  Para los a�os 2008, 2010 o 2011 se quiere saber la cantidad total de art�culos vendidos, el precio promedio y el importe total vendido por d�a; donde el importe total diario inferior a 300. Ordene por importe en forma descendente.



select * from detalle_facturas
select * from vendedores
select * from facturas
select * from clientes
