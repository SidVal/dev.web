use libreria_2015

-- EJERCICIO 9
--1 ) Emitir un listado de los artículos que no fueron vendidos este año. 
-- En ese listado solo incluir aquellos cuyo precio unitario del artículo oscile entre 20 y 50.

select descripcion
from articulos A
where cod_articulo NOT IN 
	( --la subconsulta siempre va entre parentesis.
	select cod_articulo
	from detalle_facturas DF, facturas F
	where df.nro_factura = f.nro_factura
	and year(f.fecha) = year(getdate())
	) --voy a listar todos los articulos que sí se vendieron
and pre_unitario between 20 and 50

--2) Genere un reporte con los clientes que vinieron más de 2 veces el año pasado

select nom_cliente, cod_cliente
from clientes C1
where 2 <=
	(
	select count(*) 'Cantidad' --, c.cod_cliente // como es una subconsulta, tengo que mostrar un solo campo.
	from facturas F, clientes C
	where C.cod_cliente = F.cod_cliente --aca es join normal, de la subconsulta
	and year(f.fecha) = year(getdate())-1
	-- group by c.cod_cliente
	-- having count(*) > 2
	and f.cod_cliente = c1.cod_cliente -- esto es referencia externa, o correlación
	)

-- así se hizo en clases:
select nom_cliente, cod_cliente
from clientes C1
where 2 <=
	(
	select count(*) 'Cantidad' --, c.cod_cliente // como es una subconsulta, tengo que mostrar un solo campo.
	from facturas F
	where f.cod_cliente = c1.cod_cliente
	and year(f.fecha) = year(getdate())-1
	-- group by c.cod_cliente
	-- having count(*) > 2
	-- esto es referencia externa, o correlación
	)

	
--3) Se quiere saber qué clientes no vinieron entre el 12/12/2007 y el 13/7/2010.
select cod_cliente, nom_cliente
from clientes
where cod_cliente not in
	(
	select c.cod_cliente
	from clientes C, facturas F
	where C.cod_cliente=F.cod_cliente
	and f.fecha between '12/12/2007' and '13/07/2010'
	)

--otra forma
select cod_cliente, nom_cliente
from clientes
where cod_cliente not in
	(
	select f.cod_cliente
	from facturas F
	where f.fecha between '12/12/2007' and '13/07/2010'
	)

	
--4 Liste los datos de las facturas de los clientes que solo vienen a comprar en febrero es decir que todas las veces que vino a comprar haya sido en el mes de febrero (y no otro mes).
	
select *
from facturas F1
where 2 = ALL
	(
	select month(f2.fecha)
	from facturas F2
	where F2.cod_cliente = F1.cod_cliente 
	)

--5 Muestre los datos de las facturas para los casos en que por año se hayan hecho menos de 9 facturas.

select *
from facturas F1
where 9 >
	(
	select count(*)--, year(fecha)
	from facturas F2
	--group by year(fecha)
	where year(F1.fecha)=year(f2.fecha)
	)
	
-- 6 Emita un reporte con las facturas cuyo importe total haya sido superior a 300 (incluya en el reporte los datos de los artículos vendidos y los importes).

select *
from facturas F
where 300 <= -- hay que leerlo al reves !!! 
	(
	select SUM(DF.pre_unitario*DF.cantidad)--, nro_factura
	from detalle_facturas DF
	--group by nro_factura
	where F.nro_factura=DF.nro_factura
	)
	
--ver importes totales	
select SUM(DF.pre_unitario*DF.cantidad), nro_factura
	from detalle_facturas DF
	group by nro_factura
	having SUM(DF.pre_unitario*DF.cantidad) >= 300
	
-- 7 Se quiere saber qué vendedores nunca atendieron a estos clientes: 1 y 6. Muestre solamente el nombre del vendedor.

select *
from vendedores V, facturas F, clientes c
where c.cod_cliente=f.cod_cliente
and v.cod_vendedor=f.cod_vendedor
and c.cod_cliente not in
	(
	select c.cod_cliente
	from facturas f, clientes c
	where c.cod_cliente=f.cod_cliente
	and c.cod_cliente in (1,6)
	and v.cod_vendedor=f.cod_vendedor --correlacion
	)
	
	
-- deberia dar 448 filas	
--consulta para ver el listado de los vendedores que no atendieron a los clientes 1 y 6	
select v1.cod_vendedor, c.cod_cliente
from vendedores v1, facturas f, clientes c
where v1.cod_vendedor=f.cod_vendedor
and c.cod_cliente=f.cod_cliente
and c.cod_cliente not in (1,6)

--consulta para ver los vendedores que atendieron a los clientes 1 y 6
select v1.cod_vendedor, c.cod_cliente
from vendedores v1, facturas f, clientes c
where v1.cod_vendedor=f.cod_vendedor
and c.cod_cliente=f.cod_cliente
and c.cod_cliente in (1,6)

-- 8 Listar los datos de los artículos que superaron el promedio del Importe de ventas de $ 200.
select *
from articulos A--, detalle_facturas DF
where 200 <
	(
	select avg(df.pre_unitario * df.cantidad) 'Importe'
	from detalle_facturas DF--,articulos A
	where a.cod_articulo=df.cod_articulo --JOIN DE CORRELACION
	--group by a.descripcion
	--having avg(df.pre_unitario * df.cantidad) >200
	)

-- son 15 articulos
-- articulos que superaron los 200 pesos de importe de ventas
select a.descripcion, avg(df.pre_unitario * df.cantidad) 'Importe'
from articulos A, detalle_facturas DF
where a.cod_articulo=df.cod_articulo --join
group by a.descripcion
having avg(df.pre_unitario * df.cantidad) >200

-- 9 Que artículos nunca se vendieron? Tenga además en cuenta que su nombre comience con letras que van de la “d” a la “p”. Muestre solamente la descripción de artículo.

select *
from articulos A
where a.cod_articulo not in
	(
	select df.cod_articulo 
	from detalle_facturas df
	where a.cod_articulo=df.cod_articulo
	) 
and a.descripcion like '[d-p]%'

-- articulos que se vendieron 
select *
from articulos A, detalle_facturas DF
where a.cod_articulo=df.cod_articulo
--and a.descripcion not like '[d-p]%'
order by a.cod_articulo

--10 Liste número de factura, fecha y cliente para los casos en que ese cliente haya sido atendido alguna vez por el vendedor de código 3.

select f.nro_factura, f.fecha, (c.nom_cliente +space(1)+c.ape_cliente) 'Cliente'
from clientes c, facturas f, vendedores v
where f.cod_cliente=c.cod_cliente
and v.cod_vendedor=f.cod_vendedor
and v.cod_vendedor<>3

-- solucion de clase
select f.nro_factura, f.fecha, c.ape_cliente+' '+c.nom_cliente Cliente
from facturas f, clientes c
where f.cod_cliente=c.cod_cliente
and 3 =ANY 
	(
	select cod_vendedor
	from facturas f1
	where c.cod_cliente=f1.cod_cliente
	)

-- 11 Listar número de factura, fecha, artículo, cantidad e importe para los casos en que todas las cantidades (de unidades vendidas de cada artículo) de esa factura sean superiores a 40.

-- solucion de clase:
select f.nro_factura, fecha, descripcion, cantidad, cantidad*d.pre_unitario importe
from facturas f, detalle_facturas d, articulos a
where f.nro_factura=d.nro_factura
and d.cod_articulo=a.cod_articulo
and 40 < all
	(
	select df.cantidad 
	from detalle_facturas df
	where f.nro_factura=df.nro_factura
	)


--unidades vendidas en cada articulo --
select df.nro_factura, f.fecha, a.descripcion, df.cantidad 'Cantidad', (df.pre_unitario*df.cantidad) 'Importe'
from detalle_facturas df, articulos A, facturas F
where df.nro_factura=f.nro_factura
and a.cod_articulo=df.cod_articulo
and (df.pre_unitario*df.cantidad) > 40
	
-- 12 	Emitir un listado que muestre número de factura, fecha, artículo, cantidad e importe; para los casos en que la cantidad total de unidades vendidas sean superior a 80.

select f.nro_factura, fecha, descripcion, cantidad, cantidad*d.pre_unitario importe
from facturas f, detalle_facturas d, articulos a
where f.nro_factura=d.nro_factura
and d.cod_articulo=a.cod_articulo
and 80 < 
	(
	select sum(df.cantidad) --*df.pre_unitario) recordar que dice cantidad de unidades vendidas, no importe total!
	from detalle_facturas df
	where f.nro_factura=df.nro_factura
	)

-- 13 Liste número de factura, fecha, cliente, artículo e importe para los casos en que alguno de los importes de esa factura sean menores a 100.

-- solucion de clase:
Select f.nro_factura, fecha, descripcion,
 cantidad, cantidad*d.pre_unitario importe,
  ape_cliente+' '+nom_cliente Cliente
from facturas f, detalle_facturas d,
 articulos a, clientes c
where f.nro_factura=d.nro_factura
 and d.cod_articulo=a.cod_articulo
 and f.cod_cliente=c.cod_cliente
 and 100>any
	(
	select cantidad*pre_unitario
	from detalle_facturas
	where f.nro_factura=nro_factura
	)




