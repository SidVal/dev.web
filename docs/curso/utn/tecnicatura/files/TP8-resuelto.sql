use LIBRERIA_2015

SELECT NRO_FACTURA,FECHA,C.COD_CLIENTE,NOM_CLIENTE
FROM FACTURAS F RIGHT JOIN CLIENTES C ON F.COD_CLIENTE = C.COD_CLIENTE
INNER JOIN VENDEDORES V ON F.COD_VENDEDOR=V.COD_VENDEDOR
INNER JOIN BARRIOS B ON C.COD_BARRIO=B.COD_BARRIO

--1. Genere un reporte con los datos de la facturaci�n (datos de las facturas incluidos los del vendedor y
--cliente) de los a�os 2006, 2007, 2009 y 2012.

SELECT NRO_FACTURA, FECHA,C.COD_CLIENTE, NOM_CLIENTE, V.COD_VENDEDOR, NOM_VENDEDOR
FROM FACTURAS F INNER JOIN CLIENTES C ON F.COD_CLIENTE = C.COD_CLIENTE
INNER JOIN VENDEDORES V ON  F.COD_VENDEDOR=V.COD_VENDEDOR
WHERE YEAR(F.FECHA) IN (2006, 2007, 2009, 2012)


--2. Liste los datos de la facturaci�n, de los art�culos y de la venta de las facturas correspondientes al
--mes pasado.

SELECT F.NRO_FACTURA, F.FECHA, A.COD_ARTICULO, DF.COD_ARTICULO, DF.CANTIDAD
FROM FACTURAS F INNER JOIN DETALLE_FACTURAS DF ON DF.NRO_FACTURA=F.NRO_FACTURA
INNER JOIN ARTICULOS A ON DF.COD_ARTICULO = A.COD_ARTICULO
WHERE MONTH(F.FECHA)=MONTH(GETDATE())-1
 AND YEAR(F.FECHA) = YEAR(GETDATE())



--3. Emita un listado con los datos del vendedor y las ventas que ha realizado en lo que va del a�o.
--Muestre los vendedores aun as� no tengan ventas registradas en el a�o solicitado.

SELECT V.COD_VENDEDOR, V.COD_VENDEDOR, F.NRO_FACTURA, FECHA
FROM FACTURAS F RIGHT JOIN VENDEDORES V ON F.COD_VENDEDOR = V.COD_VENDEDOR
WHERE YEAR (F.FECHA) = YEAR(GETDATE())





--4. Liste descripci�n, cantidad e importe; aun para aquellos art�culos que no registran ventas.
SELECT A.DESCRIPCION, DF.CANTIDAD,(DF.CANTIDAD*DF.PRE_UNITARIO) AS 'IMPORTE'
FROM DETALLE_FACTURAS DF RIGHT JOIN ARTICULOS A ON DF.COD_ARTICULO = A.COD_ARTICULO



--5. Genere un reporte con los datos de la facturaci�n (datos de las facturas incluidos los del vendedor y
--cliente) y de la venta (incluido el importe); para las ventas de febrero y marzo de los a�os 2006 y
--2007 y siempre que el art�culo empiece con letras que van de la �a� a la �m�. Ordene por fecha,
--cliente y art�culo.

SELECT F.NRO_FACTURA, F.FECHA, V.COD_VENDEDOR,V.NOM_VENDEDOR, C.COD_CLIENTE, C.NOM_CLIENTE,A.DESCRIPCION, DF.COD_ARTICULO, DF.CANTIDAD, (DF.CANTIDAD*DF.PRE_UNITARIO)
FROM FACTURAS F INNER JOIN VENDEDORES V ON F.COD_VENDEDOR = V.COD_VENDEDOR INNER JOIN
 CLIENTES C  ON F.COD_CLIENTE = C.COD_CLIENTE INNER JOIN
 DETALLE_FACTURAS DF  ON F.NRO_FACTURA = DF.NRO_FACTURA INNER JOIN ARTICULOS A ON DF.COD_ARTICULO = A.COD_ARTICULO
WHERE YEAR(F.FECHA) IN (2006,2007)
AND MONTH(F.FECHA) IN (2,3)
AND A.DESCRIPCION LIKE '[A-M]%'
ORDER BY F.FECHA, C.NOM_CLIENTE, A.DESCRIPCION




--6. Liste c�digo de cliente, nombre, fecha y factura para las ventas del a�o 2007. Muestre los clientes
--hayan comprado o no en ese a�o.

SELECT C.COD_CLIENTE, C.NOM_CLIENTE, F.FECHA, F.NRO_FACTURA
FROM FACTURAS F RIGHT JOIN CLIENTES C ON F.COD_CLIENTE=C.COD_CLIENTE
and YEAR(F.FECHA) = 2007



--7. Se quiere saber los art�culos que compro la cliente Elvira L�pez en lo que va del a�o. Liste art�culo,
--observaciones e importe.

SELECT A.DESCRIPCION,C.COD_CLIENTE,C.NOM_CLIENTE, F.NRO_FACTURA, DF.CANTIDAD,(DF.CANTIDAD*DF.PRE_UNITARIO) AS 'IMPORTE'
FROM FACTURAS F INNER JOIN CLIENTES C ON F.COD_CLIENTE = C.COD_CLIENTE INNER JOIN
DETALLE_FACTURAS DF ON DF.NRO_FACTURA=F.NRO_FACTURA INNER JOIN
ARTICULOS A ON DF.COD_ARTICULO = A.COD_ARTICULO
WHERE C.NOM_CLIENTE = 'Elvira Josefa'






--8. Se quiere saber los art�culos que compraron los clientes cuyos apellidos empiezan con �p�. Liste
--cliente, articulo, cantidad e importe. Ordene por cliente y art�culo, este en forma descendente. Rotule
--como CLIENTE, ARTICULO, CANTIDAD, IMPORTE.

select c.cod_cliente,c.nom_cliente + ' ' +c.ape_cliente as 'cliente', a.descripcion as 'articulo',f.nro_factura, df.cantidad, (df.cantidad*df.pre_unitario) as 'importe'
from facturas f inner join clientes c on f.cod_cliente = c.cod_cliente
inner join detalle_facturas df on df.nro_factura = f.nro_factura
inner join articulos a on df.cod_Articulo = a.cod_Articulo
where c.ape_cliente like 'p%'




--9. Emitir un listado de los art�culos que vendieron los vendedores Ledesma, Mariela y L�pez,
--Alejandro.

select a.descripcion, v.nom_vendedor, v.ape_vendedor, v.cod_vendedor, df.cod_articulo
from facturas f inner join vendedores v on f.cod_vendedor=v.cod_vendedor
inner join detalle_facturas df on df.nro_factura = f.nro_factura
inner join articulos a on df.cod_Articulo = a.cod_Articulo
where (v.nom_vendedor = 'Mariela' and v.ape_vendedor = 'Ledesma') or (v.nom_vendedor= 'Alejandro' and v.ape_vendedor = 'Lopez')

--10. Listar todos los clientes (incluidos los que nunca compraron) y los a�os de compra. No muestre
--registros repetidos.

select c.cod_cliente, c.nom_cliente + ' ' + c.ape_cliente, f.nro_factura, f.fecha
from facturas f right join clientes c on f.cod_cliente = c.cod_cliente
where year(f.fecha)