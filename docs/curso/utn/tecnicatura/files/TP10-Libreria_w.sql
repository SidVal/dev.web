use libreria_2015

-- EJERCICIO 10
-- 1 Se quiere saber ¿cuándo realizó su primer venta cada vendedor? y ¿cuánto fue el importe total de las ventas que ha realizado? Mostrar estos datos en un listado solo para los casos en que su importe promedio de vendido sea superior al importe promedio general (importe promedio de todas las facturas).

select v.cod_vendedor, v.nom_vendedor, min(f.fecha)'Primer fecha', sum(df.pre_unitario*df.cantidad)'Importe total'
from facturas f, detalle_facturas df, vendedores v
where f.nro_factura=df.nro_factura --join 1
and v.cod_vendedor=f.cod_vendedor -- join 2
group by v.cod_vendedor, v.nom_vendedor
having avg(df.pre_unitario*df.cantidad) > 
	(
	select avg(df.pre_unitario*df.cantidad)
	from detalle_Facturas df
	)
	
--no hay correlación en este práctico
--cuando habla de algo particular, se usa correlación

-- 2 Liste los montos totales mensuales facturados por cliente y además del promedio de ese monto y la el promedio de precio de artículos Todos esto datos correspondientes a período que va desde el 1° de febrero al 30 de agosto del 2014. Sólo muestre los datos si esos montos totales sea superior o igual al promedio global.

select sum(df.pre_unitario*df.cantidad)'Importe Total', 
c.cod_cliente, month(f.fecha), year(f.fecha),
avg(df.pre_unitario*df.cantidad) 'Promedio Importe Total',
avg(df.pre_unitario) 'Promedio de precio de articulos'
from clientes c, detalle_facturas df, facturas f
where c.cod_cliente=f.cod_cliente
and df.nro_factura=f.nro_factura
and month(f.fecha) between 2 and 8 --usar fecha completa sin month.
and year(f.fecha) = 2014 
group by c.cod_cliente, month(f.fecha), year(f.fecha) 
having sum(df.pre_unitario*df.cantidad) >=  -- comparo la primer consulta contra la subconsulta
	(
	select avg(df.pre_unitario*df.cantidad)
	from detalle_facturas df
	)
